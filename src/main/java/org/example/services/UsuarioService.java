package org.example.services;

import org.example.models.entities.Usuario;
import org.example.models.repositories.IUsuarioRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class UsuarioService implements IUsuarioService {

    @Autowired
    IUsuarioRepository usuarioRepository;

    @Override
    public void create(Usuario usuario) {
        //https://howtodoinjava.com/java/java-security/how-to-generate-secure-password-hash-md5-sha-pbkdf2-bcrypt-examples/
        String password = BCrypt.hashpw(usuario.getPassword(), BCrypt.gensalt(12));
        usuario.setPassword(password);
        usuarioRepository.save(usuario);
    }

    @Override
    public List<Usuario> readAll() {
        return usuarioRepository.findAll();
    }

    @Override
    public Optional<Usuario> readOne(String email) {
        if (email != null) {
            return usuarioRepository.findById(email);
        }
        return Optional.empty();
    }

    @Override
    public void update(Usuario usuario) {
        usuarioRepository.save(usuario);
    }

    @Override
    public void delete(String email) {
        usuarioRepository.deleteById(email);
    }
}
