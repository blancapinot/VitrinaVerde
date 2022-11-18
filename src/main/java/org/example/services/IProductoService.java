package org.example.services;

import org.example.models.entities.Producto;

import java.util.List;
import java.util.Optional;

public interface IProductoService {

        public void create(Producto producto);
        public List<Producto> readAll();
        public Optional<Producto> readOne(Integer idProducto);
        public void update(Producto producto);
        public void delete(Integer idProducto);
    }
