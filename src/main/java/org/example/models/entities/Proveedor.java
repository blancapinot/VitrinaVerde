package org.example.models.entities;

import javax.persistence.*;

@Entity
public class Proveedor {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Integer id;
    private String nombre;
    private Integer rut;
    private String email;
    private String website;

    public Proveedor() {
    }

    public Proveedor(String nombre, Integer rut, String email, String website) {
        this.nombre = nombre;
        this.rut = rut;
        this.email = email;
        this.website = website;
    }

    public Proveedor(Integer id, String nombre, Integer rut, String email, String website) {
        this.id = id;
        this.nombre = nombre;
        this.rut = rut;
        this.email = email;
        this.website = website;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer idProveedor) {
        this.id = idProveedor;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombreProveedor) {
        this.nombre = nombreProveedor;
    }

    public Integer getRut() {
        return rut;
    }

    public void setRut(Integer rutProveedor) {
        this.rut = rutProveedor;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String emailProveedor) {
        this.email = emailProveedor;
    }

    public String getWebsite() {
        return website;
    }

    public void setWebsite(String website) {
        this.website = website;
    }
}
