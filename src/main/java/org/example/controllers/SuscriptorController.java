package org.example.controllers;


import org.example.models.entities.Suscriptor;
import org.example.services.SuscriptorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@RequestMapping("/suscriptor")
@Controller

public class SuscriptorController {

    @Autowired
    private SuscriptorService suscriptorService;

    @RequestMapping(value = "/lista", method = RequestMethod.GET)
    public ModelAndView listarSuscriptores() {
        List<Suscriptor> suscriptores = suscriptorService.readAll();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("suscriptores", suscriptores);
        modelAndView.setViewName("suscriptor/listar");
        return modelAndView;
    }

    @RequestMapping(value = {"/editar", "/agregar"}, method = RequestMethod.GET)
    public ModelAndView editar(@RequestParam(required = false) Integer id) {
        Suscriptor suscriptor = suscriptorService.readOne(id).orElse(new Suscriptor());
        ModelAndView model = new ModelAndView();
        model.addObject("suscriptorForm", suscriptor);
        model.setViewName("suscriptor/registrar");
        return model;
    }

    @RequestMapping(value = "/guardar", method = RequestMethod.POST)
    public ModelAndView guardar(@ModelAttribute("suscriptorForm") Suscriptor suscriptor) {
        if (suscriptor.getId() != null) {
            suscriptorService.update(suscriptor);
        } else {
            suscriptorService.create(suscriptor);
        }
        List<Suscriptor> suscriptores = suscriptorService.readAll();
        ModelAndView model = new ModelAndView();
        model.addObject("suscriptores", suscriptores);
        model.setViewName("suscriptor/listar");
        return model;
    }

    @RequestMapping(value = "/eliminar/{id}", method = RequestMethod.GET)
    public ModelAndView eliminar(@PathVariable Integer id) {
        suscriptorService.delete(id);
        List<Suscriptor> suscriptores = suscriptorService.readAll();
        ModelAndView model = new ModelAndView();
        model.addObject("suscriptores", suscriptores);
        model.setViewName("suscriptor/listar");
        return model;
    }

}


