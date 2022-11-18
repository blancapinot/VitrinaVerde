package org.example.services;

import org.example.models.entities.Producto;
import org.example.models.repositories.IProductoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ProductoService implements IProductoService{

    @Autowired
    private IProductoRepository productoRepository;

    public ProductoService(IProductoRepository productoRepository) {
        this.productoRepository = productoRepository;
    }
    public List<Producto> readAll(){
        return productoRepository.findAll();
    }
    public Optional<Producto> readOne(Integer idProducto){
        if(idProducto==null){
            return Optional.empty();
        }
        return productoRepository.findById(idProducto);
    }
    public void create(Producto producto){
        productoRepository.save(producto);
    }

    public void update(Producto producto){
        productoRepository.save(producto);
    }


    public void delete(Integer idProducto){
       productoRepository.deleteById(idProducto);
    }
}


