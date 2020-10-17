package com.aprinting.aprintingkart;

import com.aprinting.aprintingkart.service.storage.ImageStorageProperties;
import com.aprinting.aprintingkart.service.storage.StorageService;

import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Bean;

@SpringBootApplication
@EnableConfigurationProperties(ImageStorageProperties.class)
public class AprintingkartApplication {

	public static void main(String[] args) {
		SpringApplication.run(AprintingkartApplication.class, args);
	}

	@Bean
	CommandLineRunner init(StorageService storageService) {
		return (args) -> {
			// storageService.deleteAll();
			storageService.init();
		};
	}

}
