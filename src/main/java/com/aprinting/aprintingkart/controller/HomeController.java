package com.aprinting.aprintingkart.controller;

import java.security.Principal;
import java.util.List;
import java.util.stream.Collectors;

import com.aprinting.aprintingkart.service.CategoryService;
import com.aprinting.aprintingkart.service.storage.StorageService;
import com.aprinting.aprintingkart.utilies.CategoryAndSubCategory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.method.annotation.MvcUriComponentsBuilder;

@Controller
public class HomeController {

    private CategoryService categoryService;
    private final StorageService imageService;

    @Autowired
    public HomeController(@Qualifier("categoryService") CategoryService categoryService, StorageService imageservice) {
        this.categoryService = categoryService;
        this.imageService = imageservice;

    }

    @GetMapping(value = "/")
    public ModelAndView home(@RequestParam(defaultValue = "apk_home", name = "name") String name) {
        ModelAndView mv = new ModelAndView(name);

        List<CategoryAndSubCategory> categories = categoryService.getCategoryWithSubCategories();

        mv.addObject("categoriesWithSubCategories", categories);

        return mv;
    }

    @GetMapping(value = "foo/hello")
    @ResponseBody
    public String name(Principal request) {

        System.out.println(request.getName());

        return "Hello ";
    }

    @GetMapping(value = "foo")
    public ModelAndView getMethodName() {
        ModelAndView modelAndView = new ModelAndView("foo");
        imageService.loadAll().forEach(e -> System.out.println(e.getFileName().toString()));

        // Category cat = catserv.getCategory("3");

        modelAndView.addObject("files",
                imageService.loadAll()
                        .map(path -> MvcUriComponentsBuilder
                                .fromMethodName(HomeController.class, "serveFile", path.getFileName().toString())
                                .build().toUri().toString())
                        .collect(Collectors.toList()));

        return modelAndView;
    }

    @GetMapping("/files/{filename:.+}")
    @ResponseBody
    public ResponseEntity<Resource> serveFile(@PathVariable String filename) {

        System.out.println("In here filename:  " + filename);
        Resource file = imageService.loadAsResource(filename);
        System.out.println("In here file:  " + file);
        return ResponseEntity.ok()
                .header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=\"" + file.getFilename() + "\"")
                .body(file);
    }

    @GetMapping(value = "admin-signin")
    public ModelAndView dashboardSigninView() {

        return new ModelAndView("dashboard_login");
    }

}
