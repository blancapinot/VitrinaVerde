package org.example.services;

import org.example.models.entities.Proveedor;
import org.example.models.repositories.IProveedorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ProveedorService implements IProveedorService {

    @Autowired
    private IProveedorRepository proveedorRepository;

    public ProveedorService(IProveedorRepository proveedorRepository) {
        this.proveedorRepository = proveedorRepository;
    }

    public List<Proveedor> readAll() {
        return proveedorRepository.findAll();
    }

    public Optional<Proveedor> readOne(Integer idProveedor) {
        if (idProveedor == null) {
            return Optional.empty();
        }

        return proveedorRepository.findById(idProveedor);
    }

    public void create(Proveedor proveedor) {
        proveedorRepository.save(proveedor);
    }

    public void update(Proveedor proveedor) {
        proveedorRepository.save(proveedor);
    }

    public void delete(Integer idProveedor) {
        proveedorRepository.deleteById(idProveedor);
    }
}
