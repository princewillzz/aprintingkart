package com.aprinting.aprintingkart.principals;

import java.util.Collection;
import java.util.Collections;

import com.aprinting.aprintingkart.models.Admin;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

public class AdminPrincipal implements UserDetails {

    private static final long serialVersionUID = 1L;

    private final Admin admin;

    public AdminPrincipal(final Admin admin) {
        this.admin = admin;
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        System.out.println("Admin Principal");
        return Collections.singleton(new SimpleGrantedAuthority("ROLE_ADMIN"));
    }

    @Override
    public String getPassword() {

        return admin.getPassword();
    }

    @Override
    public String getUsername() {

        return admin.getEmail();
    }

    @Override
    public boolean isAccountNonExpired() {

        return true;
    }

    @Override
    public boolean isAccountNonLocked() {

        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {

        return true;
    }

    @Override
    public boolean isEnabled() {

        return true;
    }

}
