package com.aprinting.aprintingkart.service.impl;

import java.util.List;
import java.util.NoSuchElementException;

import com.aprinting.aprintingkart.models.Customer;
import com.aprinting.aprintingkart.principals.CustomerPrincipal;
import com.aprinting.aprintingkart.repository.CustomerRepository;
import com.aprinting.aprintingkart.service.CustomerService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
@Qualifier("customerService")
public class CustomerServiceImpl implements CustomerService, UserDetailsService {

    private final CustomerRepository customerRepository;
    private final PasswordEncoder passwordEncoder;

    @Autowired
    protected CustomerServiceImpl(final CustomerRepository customerRepository, final PasswordEncoder passwordEncoder) {
        this.customerRepository = customerRepository;
        this.passwordEncoder = passwordEncoder;
    }

    @Override
    public List<Customer> getAllCustomers() {

        return customerRepository.findAll();
    }

    @Override
    public Customer getDetail(Long id) {
        return customerRepository.getOne(id);
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        System.out.println("Email is : " + username);
        final Customer customer = customerRepository.findByEmail(username);
        System.out.println("Customer: " + customer);
        if (customer == null) {
            throw new UsernameNotFoundException("User 404");
        }
        CustomerPrincipal customerPrincipal = new CustomerPrincipal(customer);
        System.out.println("Principal Object: " + customerPrincipal.getAuthorities());
        return customerPrincipal;
    }

    @Override
    public Customer addNewCustomer(final Customer customer) {

        // Encode the password
        customer.setPassword(passwordEncoder.encode(customer.getPassword()));

        return customerRepository.save(customer);

    }

    @Override
    public Customer resetPassword(final Customer customer) {

        final Customer newCustomer = customerRepository.findByEmail(customer.getEmail());
        if (newCustomer == null)
            throw new NoSuchElementException("Username is incorrect");

        // change password
        newCustomer.setPassword(passwordEncoder.encode(customer.getPassword()));

        // save to the database
        customerRepository.save(newCustomer);

        return newCustomer;
    }

}
