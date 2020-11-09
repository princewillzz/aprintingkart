package com.aprinting.aprintingkart.repository;

import com.aprinting.aprintingkart.models.UserVerificationEntity;

import org.springframework.data.jpa.repository.JpaRepository;

public interface UserVerificationEntityRepository extends JpaRepository<UserVerificationEntity, Long> {

    UserVerificationEntity findByUsernameAndCode(String username, String code);
}
