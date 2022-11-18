package org.example.models.repositories;

import org.example.models.entities.Proveedor;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

@Service
public interface IProveedorRepository extends JpaRepository<Proveedor, Integer> {
}
