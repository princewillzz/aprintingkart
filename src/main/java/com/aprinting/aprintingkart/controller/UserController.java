package com.aprinting.aprintingkart.controller;

import java.util.NoSuchElementException;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import com.aprinting.aprintingkart.models.Customer;
import com.aprinting.aprintingkart.service.CustomerService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class UserController {

    private final CustomerService customerService;

    @Autowired
    protected UserController(@Qualifier("customerService") final CustomerService customerService) {
        this.customerService = customerService;
    }

    @GetMapping(value = "forgot-password")
    public ModelAndView userForgotPasswordView(@RequestParam(defaultValue = "") Boolean error) {
        final ModelAndView modelAndView = new ModelAndView("forgot_password");

        if (error != null && error == true) {
            modelAndView.addObject("error", "wrong entries");
            System.out.println("wrong code");
        }

        return modelAndView;
    }

    @PostMapping(value = "forgot-password")
    public String getEmailOfUserAndSendEmailVerfication(@RequestParam String email) {
        System.out.println(email);
        // Send email
        // Call a service to send an email to the customer if his email already exists
        // in the database

        return "redirect:/forgot-password";
    }

    @PostMapping(value = "verify-reset-code")
    public ModelAndView verifyCodeAndResetPasswordView(@RequestParam(name = "email") String username,
            @RequestParam String verificationCode) {

        ModelAndView modelAndView = new ModelAndView("reset_password");
        // verify email
        System.out.println(username + " " + verificationCode);
        if (!customerService.verifyResetPasswordCode(username, verificationCode)) {
            modelAndView.setViewName("redirect:/forgot-password?error=true");
            return modelAndView;
        }

        modelAndView.addObject("verificationCode", verificationCode);

        return modelAndView;
    }

    @PostMapping(value = "reset-password")
    public String resetPassword(@ModelAttribute @Valid Customer customer, final BindingResult bindingResult,
            @RequestParam String rePassword, @RequestParam String verificationCode, final HttpServletRequest request) {

        request.setAttribute("verificationCode", verificationCode);

        if (bindingResult.hasErrors()) {
            System.out.println("validation error");
            request.setAttribute("error", bindingResult.getFieldError().getDefaultMessage());
            return "reset_password";
        }

        System.out.println(
                customer.getEmail() + " " + customer.getPassword() + " " + rePassword + " " + verificationCode);

        if (!customer.getPassword().equals(rePassword)) {
            return "reset_password";
        }

        try {
            final Customer newCustomer = customerService.resetPassword(customer);
            System.out.println(newCustomer);
        } catch (NoSuchElementException e) {
            return "reset_password";
        } catch (Exception e) {
            return "reset_password";
        }

        return "redirect:/signin";
    }

    @GetMapping(value = "signin")
    public ModelAndView signinView(@RequestParam(name = "error", defaultValue = "") String error) {
        ModelAndView modelAndView = new ModelAndView("signin"); // View Page Name
        System.out.println(error);

        return modelAndView;
    }

    @GetMapping(value = "register")
    public ModelAndView registerView() {
        ModelAndView modelAndView = new ModelAndView("signup");

        return modelAndView;
    }

    @PostMapping(value = "register-customer")
    public RedirectView registerNewCustomer(@ModelAttribute @Valid Customer customer, final BindingResult bindingResult,
            @RequestParam("confirmPassword") String confirmPassword, final RedirectAttributes redirectAttributes,
            final HttpServletRequest request) {

        final RedirectView redirectView = new RedirectView("/register");
        // If the data has any validation issue then redirect back with a error message
        if (bindingResult.hasErrors()) {
            redirectAttributes.addAttribute("error", bindingResult.getFieldError().getDefaultMessage());
            return redirectView;
        }

        // If both the passwords are correct
        if (customer.getPassword().equals(confirmPassword)) {

            try {
                // Add the customer and send it to login page
                customerService.addNewCustomer(customer);
                redirectView.setUrl("/signin");
                redirectAttributes.addAttribute("message", "login to continue");

            } catch (Exception e) {
                redirectAttributes.addAttribute("error", "Check your credentials");
            }
        } else {
            redirectAttributes.addAttribute("error", "Passoword mismatch");
        }

        return redirectView;

    }

    @GetMapping(value = "user/shopping-cart")
    public ModelAndView cartView() {
        ModelAndView modelAndView = new ModelAndView("cart");

        return modelAndView;
    }

}
