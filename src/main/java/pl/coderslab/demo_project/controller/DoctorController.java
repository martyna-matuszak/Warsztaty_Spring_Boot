package pl.coderslab.demo_project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.demo_project.entity.Clinic;
import pl.coderslab.demo_project.entity.Doctor;
import pl.coderslab.demo_project.repository.ClinicRepository;
import pl.coderslab.demo_project.repository.DoctorRepository;

import javax.validation.Valid;
import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/doctor")
public class DoctorController {

    private final DoctorRepository doctorRepository;
    private final ClinicRepository clinicRepository;
    private static final String form = "/doctor/form";
    private static final String redirect = "redirect:/doctor/all";

    public DoctorController(DoctorRepository doctorRepository, ClinicRepository clinicRepository) {
        this.doctorRepository = doctorRepository;
        this.clinicRepository = clinicRepository;
    }

    @GetMapping("/add")
    public String createForm(Model model){
        model.addAttribute("doctor", new Doctor());
        return form;
    }

    @PostMapping("/add")
    public String create(@Valid Doctor doctor, BindingResult result){
        if(result.hasErrors()){
            return form;
        }
        doctorRepository.save(doctor);
        return redirect;
    }

    @GetMapping("/edit/{id}")
    public String editForm(Model model, @PathVariable long id){
        model.addAttribute("doctor", doctorRepository.findById(id));
        return form;
    }

    @PostMapping("/edit/{id}")
    public String edit(@Valid Doctor doctor, BindingResult result){
        if(result.hasErrors()){
            return form;
        }
        doctorRepository.save(doctor);
        return redirect;
    }

    @GetMapping("/delete/{id}")
    public String deleteView(){
        return "/delete";
    }

    @PostMapping("/delete/{id}")
    public String delete(@PathVariable long id, @RequestParam String delete) throws Exception {
        Optional<Doctor> doctorOptional = doctorRepository.findById(id);
        Doctor doctor = doctorOptional.orElseThrow(Exception::new);
        if (delete.equals("Delete")){
            doctorRepository.delete(doctor);
        }
        return redirect;
    }


    @GetMapping("/all")
    public String getAll(Model model){
        List<Doctor> doctors = doctorRepository.findAll();
        model.addAttribute("doctors", doctors);
        return "/doctor/all";
    }

    @ModelAttribute("clinics")
    public List<Clinic> clinicList(){
        return clinicRepository.findAll();
    }
}
