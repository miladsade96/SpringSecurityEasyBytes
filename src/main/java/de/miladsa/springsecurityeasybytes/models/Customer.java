package de.miladsa.springsecurityeasybytes.models;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "customers")
@Getter
@Setter
public class Customer {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public long id;

    public String email;
    public String pwd;
    public String role;
}
