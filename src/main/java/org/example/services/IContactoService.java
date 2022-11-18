package org.example.services;

import org.example.models.entities.Contacto;
import org.example.models.entities.Producto;

import java.util.List;
import java.util.Optional;

public interface IContactoService {

        public void create(Contacto contacto);
        public List<Contacto> readAll();
        public Optional<Contacto> readOne(Long id);
        public void update(Contacto contacto);
        public void delete(Long id);
    }
