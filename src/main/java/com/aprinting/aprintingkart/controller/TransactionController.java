package com.aprinting.aprintingkart.controller;

import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.SignatureException;
import java.util.HashMap;
import java.util.Random;

import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import javax.xml.bind.DatatypeConverter;

import com.aprinting.aprintingkart.models.Customer;
import com.aprinting.aprintingkart.models.RazorPayEntity;
import com.aprinting.aprintingkart.security.Signature;
import com.aprinting.aprintingkart.service.CustomerService;
import com.razorpay.Order;
import com.razorpay.RazorpayClient;
import com.razorpay.RazorpayException;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TransactionController {

    private final CustomerService customerService;

    private final Signature signature;

    private RazorpayClient razorpayClient;

    private final String SECRET_ID = "rzp_test_oO5Nlz03qtxInq";
    private final String SECRET_KEY = "aDCCVMEUiVoDkZXhdpE8cA75";

    @Autowired
    public TransactionController(@Qualifier("customerService") final CustomerService customerService,
            final Signature signature) {
        this.customerService = customerService;
        this.signature = signature;

        try {
            this.razorpayClient = new RazorpayClient(SECRET_ID, SECRET_KEY);
        } catch (RazorpayException e) {
            System.out.println("Exception in ");
        }
    }

    // Need to remove this
    String orderId;

    @PostMapping(value = "paid")
    @ResponseBody
    public ResponseEntity<?> paidMoney(@RequestParam HashMap<Object, Object> model) {

        final String razorpaySignature = (String) model.get("razorpay_signature");
        final String razorpayPaymentId = (String) model.get("razorpay_payment_id");
        final String razorpayOrderId = (String) model.get("razorpay_order_id");

        try {
            System.out.println(model);

            String generatedSignature = signature
                    .generateSignatureForPaymentVerification(orderId + "|" + razorpayPaymentId, this.SECRET_KEY);

            System.out.println(generatedSignature);
            System.out.println(razorpaySignature);

            if (razorpaySignature.equals(generatedSignature)) {
                return ResponseEntity.ok("Verified I got your money");
            }

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }

        return ResponseEntity.ok().body("fuck you no money");
    }

    @PostMapping(value = "pay")
    public ModelAndView createOrder() {

        // Customer customer = customerService.getDetail(1L);
        ModelAndView modelAndView = new ModelAndView("pay");

        try {
            Random random = new Random();
            int amt = random.nextInt(1000) + 1;
            amt *= 100;

            Order order = createRazorPayOrder(amt);
            System.out.println("Order : " + order.toString());

            /*******/
            // Need to remove this
            orderId = order.get("id");

            /********/

            modelAndView.addObject("amt", amt);
            modelAndView.addObject("oid", order.get("id"));
            modelAndView.addObject("Allorders", razorpayClient.Orders.fetchAll());

            // RazorPayEntity razorPayEntity = getRazorPay((String) order.get("id"),
            // customer, amt);
        } catch (Exception e) {
            System.out.println("Exception " + e.getMessage());
        }

        return modelAndView;

    }

    @GetMapping(value = "pay")
    public ModelAndView getPayView() {

        ModelAndView mv = new ModelAndView("pay");
        try {
            System.out.println(razorpayClient.Orders.fetchAll().get(0));

        } catch (RazorpayException e) {
            System.out.println(e.getMessage());
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return mv;
    }

    private RazorPayEntity getRazorPay(String orderId, Customer customer, int amt) {
        RazorPayEntity razorPay = new RazorPayEntity();
        razorPay.setApplicationFee(String.valueOf(amt));
        razorPay.setCustomerName(customer.getName());
        razorPay.setCustomerEmail(customer.getEmail());
        razorPay.setMerchantName("Test");
        razorPay.setPurchaseDescription("TEST PURCHASES");
        razorPay.setRazorpayOrderId(orderId);
        razorPay.setSecretKey(SECRET_ID);
        // razorPay.setImageURL("/logo");
        razorPay.setTheme("#F37254");
        razorPay.setNotes("notes" + orderId);

        return razorPay;
    }

    private Order createRazorPayOrder(int amt) throws RazorpayException {
        JSONObject options = new JSONObject();
        options.put("amount", amt);
        options.put("currency", "INR");
        options.put("receipt", "txn_123456");
        options.put("payment_capture", 1);

        return razorpayClient.Orders.create(options);
    }

}
