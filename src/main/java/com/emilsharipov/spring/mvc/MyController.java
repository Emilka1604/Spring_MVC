package com.emilsharipov.spring.mvc;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;


@Controller
public class MyController {

    @RequestMapping("/")
    public String showFirstView(){
        return "first-view";
    }

    @RequestMapping("/askDetails")
    public String askEmployeeDetails(@ModelAttribute("employee") Employee employee){
        return "ask-emp-details-view";
    }

    @GetMapping("/showDetails")
    public String showEmployeeDetails(@ModelAttribute("employee") @Valid Employee employee
            , BindingResult bindingResult){

        if(bindingResult.hasErrors()){
            return "ask-emp-details-view";
        }
        return "show-emp-details-view";
    }
}
