package pl.coderslab.demo_project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("")
public class NavigationController {

    @RequestMapping("")
    public String hello(){
        return "index";
    }

    @RequestMapping("/calendar")
    public String calendar(){
        return "calendar";
    }
}
