package com.aprinting.aprintingkart.controller;

import com.aprinting.aprintingkart.Forms.AdminProfileForm;
import com.aprinting.aprintingkart.service.AdminService;
import com.aprinting.aprintingkart.service.storage.StorageService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "dashboard")
public class DashboardController {

    @Autowired
    StorageService storageService;

    private final AdminService adminService;

    @Autowired
    protected DashboardController(@Qualifier("adminService") final AdminService adminService) {
        this.adminService = adminService;
    }

    @GetMapping(value = "")
    public ModelAndView getMethodName(@RequestParam(defaultValue = "dashboard", name = "name") String name) {

        return new ModelAndView("dashboard/" + name);
    }

    @GetMapping(value = "profile")
    public ModelAndView getProfileView() {
        return new ModelAndView("dashboard/manageProfile");
    }

    @PutMapping(value = "admin/profile")
    @ResponseBody
    public ResponseEntity<?> updateAdminProfile(@RequestBody AdminProfileForm adminFormData) {
        System.out.println(adminFormData);

        try {
            adminService.updateProfile(adminFormData);
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.NOT_ACCEPTABLE).body("Failed to update");
        }

        return ResponseEntity.ok().body("Success");
    }

}
