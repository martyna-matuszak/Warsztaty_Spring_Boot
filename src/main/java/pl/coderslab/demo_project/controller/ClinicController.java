package pl.coderslab.demo_project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.demo_project.entity.Clinic;
import pl.coderslab.demo_project.repository.ClinicRepository;

import javax.validation.Valid;
import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/clinic")
public class ClinicController {

    private final ClinicRepository clinicRepository;
    private static final String form = "/clinic/form";
    private static final String redirect = "redirect:/clinic/all";


    public ClinicController(ClinicRepository clinicRepository) {
        this.clinicRepository = clinicRepository;
    }

    @GetMapping("/add")
    public String createForm(Model model){
        model.addAttribute("clinic", new Clinic());
        return form;
    }

    @PostMapping("/add")
    public String create(@Valid Clinic clinic, BindingResult result){
        if(result.hasErrors()){
            return form;
        }
        clinicRepository.save(clinic);
        return redirect;
    }

    @GetMapping("/edit/{id}")
    public String editForm(Model model, @PathVariable long id){
        model.addAttribute("clinic", clinicRepository.findById(id));
        return form;
    }

    @PostMapping("/edit/{id}")
    public String edit(@Valid Clinic clinic, BindingResult result){
        if(result.hasErrors()){
            return form;
        }
        clinicRepository.save(clinic);
        return redirect;
    }

    @GetMapping("/delete/{id}")
    public String deleteView(Model model, @PathVariable long id) throws Exception {
        Optional<Clinic> clinicOptional = clinicRepository.findById(id);
        Clinic clinic = clinicOptional.orElseThrow(Exception::new);
        model.addAttribute("clinic", clinic);
        return "/clinic/delete";
    }

    @PostMapping("/delete/{id}")
    public String delete(@ModelAttribute Clinic clinic, @RequestParam String delete){
        if (delete.equals("Delete")){
            clinicRepository.delete(clinic);
        }
        return redirect;
    }


    @GetMapping("/all")
    public String getAll(Model model){
        List<Clinic> clinics = clinicRepository.findAll();
        model.addAttribute("clinics", clinics);
        return "/clinic/all";
    }
}
