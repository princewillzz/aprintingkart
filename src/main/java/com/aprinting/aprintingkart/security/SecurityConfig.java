package com.aprinting.aprintingkart.security;

import com.aprinting.aprintingkart.service.AdminService;
import com.aprinting.aprintingkart.service.CustomerService;
import com.aprinting.aprintingkart.service.impl.AdminServiceImpl;
import com.aprinting.aprintingkart.service.impl.CustomerServiceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.BeanIds;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@EnableWebSecurity
public class SecurityConfig {

    @Configuration
    @Order(1)
    public static class CustomerSecurityConfig extends WebSecurityConfigurerAdapter {

        private CustomerServiceImpl customerService;

        @Autowired
        protected CustomerSecurityConfig(@Qualifier("customerService") final CustomerServiceImpl customerService) {
            this.customerService = customerService;
        }

        @Bean(name = BeanIds.AUTHENTICATION_MANAGER)
        @Qualifier("customerAuthenticationManager")
        @Override
        public AuthenticationManager authenticationManagerBean() throws Exception {

            return super.authenticationManagerBean();
        }

        @Override
        protected void configure(AuthenticationManagerBuilder auth) throws Exception {

            auth.userDetailsService(customerService);
        }

        @Override
        protected void configure(HttpSecurity http) throws Exception {

            http.antMatcher("/user/**").authorizeRequests().anyRequest().hasAnyRole("CUSTOMER").and().formLogin()
                    .loginPage("/signin").loginProcessingUrl("/user/login-customer").failureUrl("/signin?error=true")
                    .defaultSuccessUrl("/", false).permitAll().and().csrf().disable();

        }

    }

    @Configuration
    @Order(2)
    public static class DashboardSecurityConfig extends WebSecurityConfigurerAdapter {

        private AdminServiceImpl adminService;

        @Autowired
        protected DashboardSecurityConfig(@Qualifier("adminService") AdminServiceImpl adminService) {
            this.adminService = adminService;
        }

        @Override
        protected void configure(AuthenticationManagerBuilder auth) throws Exception {
            auth.userDetailsService(adminService);
        }

        @Override
        protected void configure(HttpSecurity http) throws Exception {
            http.antMatcher("/dashboard/**").authorizeRequests().anyRequest().hasAnyRole("ADMIN").and().formLogin()
                    .loginPage("/admin-signin").loginProcessingUrl("/dashboard/login-admin")
                    .failureUrl("/admin-signin?error=true").defaultSuccessUrl("/dashboard", false).permitAll().and()
                    .csrf().disable();

        }

    }

    // @Configuration
    // public static class GlobalSecurityConfiguration extends
    // WebSecurityConfigurerAdapter {

    // @Override
    // protected void configure(HttpSecurity http) throws Exception {
    // http.authorizeRequests().antMatchers("/api/categories-or-products/**").hasRole("CUSTOMER")
    // .antMatchers("/api/sub-categories/**").hasAnyRole("ADMIN",
    // "CUSTOMER").anyRequest().permitAll();
    // }

    // }

    @Bean
    public static PasswordEncoder encoder() {
        return NoOpPasswordEncoder.getInstance();
    }

}
