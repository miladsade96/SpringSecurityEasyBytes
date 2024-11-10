package de.miladsa.springsecurityeasybytes.controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ContactController {
    @GetMapping("/contact")
    public String saveContactsInquiryDetails() {
        return "Inquiry details saved on the DB";
    }
}
