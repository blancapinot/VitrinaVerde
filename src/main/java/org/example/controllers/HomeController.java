package org.example.controllers;

import org.example.models.entities.Producto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class HomeController {

    @RequestMapping(value = ("/"), method = RequestMethod.GET)
    public ModelAndView goToHome(){
        return new ModelAndView("inicio");
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView mostrarLogin(){
        return new ModelAndView("login");
    }

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public ModelAndView logout(){
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if(authentication != null){
            SecurityContextHolder.getContext().setAuthentication(null);
        }
        return new ModelAndView("redirect:/login?logout");
    }
}
