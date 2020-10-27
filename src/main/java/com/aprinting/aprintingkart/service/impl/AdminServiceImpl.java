package com.aprinting.aprintingkart.service.impl;

import com.aprinting.aprintingkart.Forms.AdminProfileForm;
import com.aprinting.aprintingkart.models.Admin;
import com.aprinting.aprintingkart.repository.AdminRepository;
import com.aprinting.aprintingkart.service.AdminService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service
@Qualifier("adminService")
public class AdminServiceImpl implements AdminService {

    private final AdminRepository adminRepository;

    @Autowired
    protected AdminServiceImpl(final AdminRepository adminRepository) {
        this.adminRepository = adminRepository;
    }

    @Override
    public void updateProfile(AdminProfileForm formdata) {

        final Admin admin = new Admin();
        admin.setName(formdata.getName());
        admin.setEmail(formdata.getEmail());
        admin.setPhone(formdata.getPhone());
        admin.setPassword(formdata.getPassword());

        adminRepository.save(admin);

    }

}
