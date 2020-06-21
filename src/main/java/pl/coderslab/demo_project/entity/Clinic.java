package pl.coderslab.demo_project.entity;

import org.hibernate.validator.constraints.pl.NIP;
import pl.coderslab.demo_project.validator.HouseNumberCheck;
import pl.coderslab.demo_project.validator.PostcodeCheck;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;

@Entity
@Table(name = "clinic")
public class Clinic {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank
    private String shortName;

    @NotBlank
    private String name;

    @NIP
    private String nip;

    @NotBlank
    private String street;

    @HouseNumberCheck
    private String houseNumber;

    @NotBlank
    private String city;

    @PostcodeCheck
    private String postcode;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getShortName() {
        return shortName;
    }

    public void setShortName(String shortName) {
        this.shortName = shortName;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getNip() {
        return nip;
    }

    public void setNip(String nip) {
        this.nip = nip;
    }

    public String getAddress() {
        return street + " " + houseNumber + " " + postcode + " " + city;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public String getHouseNumber() {
        return houseNumber;
    }

    public void setHouseNumber(String houseNumber) {
        this.houseNumber = houseNumber;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getPostcode() {
        return postcode;
    }

    public void setPostcode(String postcode) {
        this.postcode = postcode;
    }
}
