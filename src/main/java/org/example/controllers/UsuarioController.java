package org.example.controllers;

import org.example.models.entities.Usuario;
import org.example.services.UsuarioService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/usuario")
public class UsuarioController {

    @Autowired
    UsuarioService usuarioService;

    @RequestMapping(value = "/lista", method = RequestMethod.GET)
    public ModelAndView listarUsuarios() {
        List<Usuario> usuarios = usuarioService.readAll();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("usuarios", usuarios);
        modelAndView.setViewName("usuario/listar");
        return modelAndView;
    }

    @RequestMapping(value = "/agregar", method = RequestMethod.GET)
    public ModelAndView crearActualizar(@RequestParam(required = false) String email) {
        Usuario usuario = usuarioService.readOne(email).orElse(new Usuario());
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("usuarioForm", usuario);
        modelAndView.setViewName("usuario/editar");
        return modelAndView;
    }

    @RequestMapping(value = "/guardar", method = RequestMethod.POST)
    public ModelAndView guardar(@ModelAttribute("usuarioForm") Usuario usuario) {
        usuarioService.create(usuario);
        return new ModelAndView("redirect:/usuario/lista");
    }

    @RequestMapping(value = "/eliminar/{email}", method = RequestMethod.GET)
    public ModelAndView eliminar(@PathVariable String email) {
        usuarioService.delete(email);
        return new ModelAndView("redirect:/usuario/lista");
    }

}
