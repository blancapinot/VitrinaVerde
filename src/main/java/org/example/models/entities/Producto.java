package org.example.models.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Producto {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Integer id;
    private String nombre;
    private String descripcion;
    private Integer precio;
    private Integer idProveedor;

    private String linkImagen;

    public Producto() {
    }

    public Producto(String nombre, String descripcion, Integer precio, Integer idProveedor) {
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.precio = precio;
        this.idProveedor = idProveedor;
    }

    public Producto(Integer id, String nombre, String descripcion, Integer precio, Integer idProveedor) {
        this.id = id;
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.precio = precio;
        this.idProveedor = idProveedor;
    }


    public Integer getId() {
        return id;
    }

    public void setId(Integer idProducto) {
        this.id = idProducto;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombreProducto) {
        this.nombre = nombreProducto;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcionProducto) {
        this.descripcion = descripcionProducto;
    }

    public Integer getPrecio() {
        return precio;
    }

    public void setPrecio(Integer precioProducto) {
        this.precio = precioProducto;
    }

    public Integer getIdProveedor() {
        return idProveedor;
    }

    public void setIdProveedor(String nombreProveedor) {
        this.idProveedor = idProveedor;
    }

    public void setIdProveedor(Integer idProveedor) {
        this.idProveedor = idProveedor;
    }

    public String getLinkImagen() {
        return linkImagen;
    }

    public void setLinkImagen(String linkImagen) {
        this.linkImagen = linkImagen;
    }

    @Override
    public String toString() {
        return "Producto{" +
                "idProducto=" + id +
                ", nombreProducto='" + nombre + '\'' +
                ", descripcionProducto='" + descripcion + '\'' +
                ", precioProducto=" + precio +
                ", idProveedor='" + idProveedor + '\'' +
                '}';
    }
}
