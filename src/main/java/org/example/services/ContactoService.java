package org.example.services;

import org.example.models.entities.Contacto;
import org.example.models.repositories.IContactoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ContactoService implements IContactoService {

    @Autowired
    private IContactoRepository contactoRepository;

    @Override
    public void create(Contacto contacto) {
        contactoRepository.save(contacto);
    }

    @Override
    public List<Contacto> readAll() {
        return null;
    }

    @Override
    public Optional<Contacto> readOne(Long id) {
        return Optional.empty();
    }

    @Override
    public void update(Contacto contacto) {

    }

    @Override
    public void delete(Long id) {

    }
}
