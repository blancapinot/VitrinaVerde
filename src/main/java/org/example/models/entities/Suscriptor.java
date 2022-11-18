package org.example.models.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Suscriptor {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Integer id;
    private String nombre;
    private String email;
    private Boolean newsletterStatus = true;

    public Suscriptor() {
    }

    public Suscriptor(String nombre, String email, boolean newsletterStatus) {
        this.nombre = nombre;
        this.email = email;
        this.newsletterStatus = newsletterStatus;
    }

    public Suscriptor(Integer idSuscriptor, String nombre, String email, boolean newsletterStatus) {
        this.id = idSuscriptor;
        this.nombre = nombre;
        this.email = email;
        this.newsletterStatus = newsletterStatus;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer idSuscriptor) {
        this.id = idSuscriptor;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombreSuscriptor) {
        this.nombre = nombreSuscriptor;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String emailSuscriptor) {
        this.email = emailSuscriptor;
    }

    public boolean isNewsletterStatus() {
        return newsletterStatus;
    }

    public void setNewsletterStatus(boolean newsletterStatus) {
        this.newsletterStatus = newsletterStatus;
    }

    @Override
    public String toString() {
        return "Suscriptor{" +
                "idSuscriptor=" + id +
                ", nombreSuscriptor='" + nombre + '\'' +
                ", emailSuscriptor='" + email + '\'' +
                ", newsletterStatus=" + newsletterStatus +
                '}';
    }
}
