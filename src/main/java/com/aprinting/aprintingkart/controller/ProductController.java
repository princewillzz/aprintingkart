package com.aprinting.aprintingkart.controller;

import com.aprinting.aprintingkart.Exceptions.DuplicateFileException;
import com.aprinting.aprintingkart.models.Product;
import com.aprinting.aprintingkart.service.CategoryService;
import com.aprinting.aprintingkart.service.ProductService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class ProductController {

    private final ProductService productService;
    private final CategoryService categoryService;

    @Autowired
    protected ProductController(@Qualifier("productService") final ProductService productService,
            @Qualifier("categoryService") CategoryService categoryService) {

        this.categoryService = categoryService;
        this.productService = productService;
    }

    @GetMapping(value = "product-detail")
    public ModelAndView getProductDetailView(@RequestParam("id") String id) {
        ModelAndView modelAndView = new ModelAndView("product-view");

        return modelAndView;
    }

    @GetMapping(value = "dashboard/manage-product")
    public ModelAndView getManageProductView() {
        ModelAndView modelAndView = new ModelAndView("dashboard/manageProduct");

        return modelAndView;
    }

    @GetMapping(value = "dashboard/add-product")
    public ModelAndView addProductView(@ModelAttribute("error") String error) {
        ModelAndView modelAndView = new ModelAndView("dashboard/addProduct");
        try {
            modelAndView.addObject("categories", categoryService.getCategories());
            modelAndView.addObject("error", error);
        } catch (Exception e) {
            System.out.println("Something wrong in fetching category list");
        }

        return modelAndView;
    }

    @PostMapping(value = "dashboard/add-product")
    public RedirectView addNewProduct(@ModelAttribute Product product,
            @RequestParam("productPhoto") MultipartFile photo, final RedirectAttributes redirectAttributes) {

        try {
            productService.addProduct(product, photo);
        } catch (DuplicateFileException e) {
            redirectAttributes.addAttribute("error", e.getMessage());
            System.out.println(e.getMessage());
        } catch (Exception e) {
            System.out.println("Exception occured in adding a product");
        }

        return new RedirectView("/dashboard/add-product");

    }

}
