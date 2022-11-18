package org.example.controllers;


import org.example.models.entities.Proveedor;
import org.example.services.ProveedorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/proveedor")
public class ProveedorController {


    @Autowired
    private ProveedorService proveedorService;

    @RequestMapping(value = "/lista", method = RequestMethod.GET)
    public ModelAndView listarProveedores() {
        List<Proveedor> proveedores = proveedorService.readAll();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("proveedores", proveedores);
        modelAndView.setViewName("proveedor/listar");
        return modelAndView;
    }

    @RequestMapping(value = "/detalle", method = RequestMethod.GET)
    public ModelAndView verDetalle() {
        return new ModelAndView("proveedor/detalle");
    }

    @RequestMapping(value = {"/editar", "/agregar"}, method = RequestMethod.GET)
    public ModelAndView editar(@RequestParam(required = false) Integer id) {
        Proveedor proveedor = proveedorService.readOne(id).orElse(new Proveedor());
        ModelAndView model = new ModelAndView();
        model.addObject("proveedorForm", proveedor);
        model.setViewName("proveedor/editar");
        return model;
    }

    @RequestMapping(value = "/guardar", method = RequestMethod.POST)
    public ModelAndView guardar(@ModelAttribute("proveedorForm") Proveedor proveedor) {
        if (proveedor.getId() != null) {
            proveedorService.update(proveedor);
        } else {
            proveedorService.create(proveedor);
        }
        return new ModelAndView("proveedor/listar");
    }

    @RequestMapping(value = "/eliminar/{id}", method = RequestMethod.GET)
    public ModelAndView eliminar(@PathVariable Integer id) {
        proveedorService.delete(id);
        ModelAndView model = new ModelAndView();
        model.setViewName("proveedor/listar");
        return model;
    }

}

