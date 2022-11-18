package org.example.services;

import org.example.models.entities.Usuario;

import java.util.List;
import java.util.Optional;

public interface IUsuarioService {

    void create(Usuario usuario);

    List<Usuario> readAll();

    Optional<Usuario> readOne(String email);

    void update(Usuario usuario);

    void delete(String email);
}
