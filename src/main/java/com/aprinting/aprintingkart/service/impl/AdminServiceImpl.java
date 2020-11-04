package com.aprinting.aprintingkart.service.impl;

import com.aprinting.aprintingkart.Forms.AdminProfileForm;
import com.aprinting.aprintingkart.models.Admin;
import com.aprinting.aprintingkart.principals.AdminPrincipal;
import com.aprinting.aprintingkart.repository.AdminRepository;
import com.aprinting.aprintingkart.service.AdminService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
@Qualifier("adminService")
public class AdminServiceImpl implements AdminService, UserDetailsService {

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

    @Override
    public UserDetails loadUserByUsername(final String username) throws UsernameNotFoundException {
        System.out.println("email: " + username);
        final Admin admin = adminRepository.findByEmail(username);
        System.out.println("admin is: " + admin);
        if (admin == null) {
            throw new UsernameNotFoundException("User not available");
        }
        final AdminPrincipal adminPrincipal = new AdminPrincipal(admin);
        return adminPrincipal;
    }

}
