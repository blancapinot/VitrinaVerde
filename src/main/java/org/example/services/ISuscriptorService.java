package org.example.services;

import org.example.models.entities.Proveedor;
import org.example.models.entities.Suscriptor;

import java.util.List;
import java.util.Optional;

public interface ISuscriptorService {
    public void create(Suscriptor suscriptor);
    public List<Suscriptor> readAll();
    public Optional<Suscriptor> readOne(Integer idSuscriptor);
    public void update(Suscriptor suscriptor);
    public void delete(Integer idSuscriptor);
}
