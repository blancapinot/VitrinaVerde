package org.example.services;

import org.example.models.entities.Suscriptor;
import org.example.models.repositories.ISuscriptorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class SuscriptorService implements ISuscriptorService {

    @Autowired
    private ISuscriptorRepository suscriptorRepository;

    public SuscriptorService(ISuscriptorRepository suscriptorRepository) {
        this.suscriptorRepository = suscriptorRepository;
    }

    public List<Suscriptor> readAll() {
        return suscriptorRepository.findAll();
    }

    public Optional<Suscriptor> readOne(Integer idSuscriptor) {
        if (idSuscriptor == null) {
            return Optional.empty();
        }
        return suscriptorRepository.findById(idSuscriptor);
    }

    public void create(Suscriptor suscriptor) {
        suscriptorRepository.save(suscriptor);
    }

    public void update(Suscriptor suscriptor) {
        suscriptorRepository.save(suscriptor);
    }

    public void delete(Integer idSuscriptor) {
        suscriptorRepository.deleteById(idSuscriptor);
    }
}
