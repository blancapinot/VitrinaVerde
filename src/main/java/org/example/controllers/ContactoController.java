package org.example.controllers;

import org.example.models.entities.Contacto;
import org.example.services.ContactoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/contacto")
public class ContactoController {

    @Autowired
    ContactoService contactoService;

    @RequestMapping(value = "",method = RequestMethod.GET)
    public ModelAndView mostrarFormulario() {
        ModelAndView model = new ModelAndView();
        Contacto contacto = new Contacto();
        model.addObject("contactoForm", contacto);
        model.setViewName("contacto/contacto");
        return model;
    }

    @RequestMapping(value = "/enviado",method = RequestMethod.GET)
    public ModelAndView enviado() {
        return new ModelAndView("contacto/enviado");
    }

    @RequestMapping(value = "/enviar",method = RequestMethod.POST)
    public ModelAndView enviar(@ModelAttribute("contactoForm") Contacto contacto) {
        contactoService.create(contacto);
        return new ModelAndView("contacto/enviado");
    }
}
