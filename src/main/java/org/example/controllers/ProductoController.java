package org.example.controllers;

import org.example.models.entities.Producto;
import org.example.services.ProductoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@RequestMapping("/producto")
@Controller
public class ProductoController {

    @Autowired
    private ProductoService productoService;

    @RequestMapping(value = "/lista", method = RequestMethod.GET)
    public ModelAndView listarProductos() {
        List<Producto> productos = productoService.readAll();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("productos", productos);
        modelAndView.setViewName("producto/listar");
        return modelAndView;
    }

    @RequestMapping(value = "/detalle", method = RequestMethod.GET)
    public ModelAndView verDetalle() {
        return new ModelAndView("producto/detalle");
    }

    @RequestMapping(value = {"/editar", "/agregar"}, method = RequestMethod.GET)
    public ModelAndView editar(@RequestParam(required = false) Integer id) {
        Producto producto = productoService.readOne(id).orElse(new Producto());
        ModelAndView model = new ModelAndView();
        model.addObject("productoForm", producto);
        model.setViewName("producto/editar");
        return model;
    }

    @RequestMapping(value = "/guardar", method = RequestMethod.POST)
    public ModelAndView guardar(@ModelAttribute("productoForm") Producto producto) {
        if (producto.getId() != null) {
            productoService.update(producto);
        } else {
            productoService.create(producto);
        }
        return new ModelAndView("producto/listar");
    }

    @RequestMapping(value = "/eliminar/{id}", method = RequestMethod.GET)
    public ModelAndView eliminar(@PathVariable Integer id) {
        productoService.delete(id);
        ModelAndView model = new ModelAndView();
        model.setViewName("producto/listar");
        return model;
    }

}



