package org.example.models.repositories;

import org.example.models.entities.Suscriptor;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

@Service
public interface ISuscriptorRepository extends JpaRepository<Suscriptor, Integer> {
}
