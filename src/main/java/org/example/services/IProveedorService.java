package org.example.services;


import org.example.models.entities.Proveedor;

import java.util.List;
import java.util.Optional;

public interface IProveedorService {

    public void create(Proveedor proveedor);
    public List<Proveedor> readAll();
    public Optional<Proveedor> readOne(Integer idProveedor);
    public void update(Proveedor proveedor);
    public void delete(Integer idProveedor);
}
