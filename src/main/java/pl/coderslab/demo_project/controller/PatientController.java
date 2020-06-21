package pl.coderslab.demo_project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.demo_project.entity.Clinic;
import pl.coderslab.demo_project.entity.Doctor;
import pl.coderslab.demo_project.entity.Patient;
import pl.coderslab.demo_project.repository.ClinicRepository;
import pl.coderslab.demo_project.repository.DoctorRepository;
import pl.coderslab.demo_project.repository.PatientRepository;

import javax.validation.Valid;
import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/patient")
public class PatientController {

    private final PatientRepository patientRepository;
    private final ClinicRepository clinicRepository;
    private final DoctorRepository doctorRepository;
    private static final String form = "/patient/form";
    private static final String redirect = "redirect:/patient/all";

    public PatientController(PatientRepository patientRepository, ClinicRepository clinicRepository, DoctorRepository doctorRepository) {
        this.patientRepository = patientRepository;
        this.clinicRepository = clinicRepository;
        this.doctorRepository = doctorRepository;
    }


    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String createForm(Model model){
        Patient patient = new Patient();
        patient.setPatientNumber(setPatientNumberAuto());
        model.addAttribute("patient", patient);
        return form;
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String create(@Valid Patient patient, BindingResult result){
        if(result.hasErrors()){
            return form;
        }
        patientRepository.save(patient);
        return redirect;
    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public String editForm(Model model, @PathVariable long id){
        model.addAttribute("patient", patientRepository.findById(id));
        return form;
    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.POST)
    public String edit(@Valid Patient patient, BindingResult result){
//        if(re)
        patientRepository.save(patient);
        return redirect;
    }

    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public String deleteView(Model model, @PathVariable long id) throws Exception {
        Optional<Patient> patientOptional = patientRepository.findById(id);
        Patient patient = patientOptional.orElseThrow(Exception::new);
        model.addAttribute("patient", patient);
        return "/patient/delete";
    }

    @RequestMapping(value = "/delete/{id}", method = RequestMethod.POST)
    public String delete(@ModelAttribute Patient patient, @RequestParam String delete){
        if (delete.equals("Delete")){
            patientRepository.delete(patient);
        }
        return redirect;
    }

    @GetMapping(value = "/all")
    public String getAll(Model model){
        List<Patient> patients = patientRepository.findAll();
        model.addAttribute("patients", patients);
        return "/patient/all";
    }

    public String setPatientNumberAuto(){
        Optional <Patient> lastPatientOptional = patientRepository.findFirstByOrderByIdDesc();
        Patient lastPatient = lastPatientOptional.orElse(new Patient());
        String lastPatientNumber = lastPatient.getPatientNumber();
        String patientNumber = "";
        int year = LocalDate.now().getYear();
        if(lastPatientNumber==null){
            patientNumber = "1/" + year;
        } else {
            lastPatientNumber = lastPatient.getPatientNumber();
            String[] numberElements = lastPatientNumber.split("/");
            if(Integer.parseInt(numberElements[1])==year){
                Long counter = Long.parseLong(numberElements[0])+1;
                patientNumber = counter + "/" + year;
            } else {
                patientNumber = "1/" + year;
            }
        }
        return patientNumber;
    }

    @ModelAttribute
    public List<Clinic> clinicList(){
        return clinicRepository.findAll();
    }

//    @ModelAttribute
//    public List<Doctor> doctorList(Clinic clinic){
//        return doctorRepository.findAllByClinic(clinic);
//    }

    @ModelAttribute
    public List<Doctor> doctorList(){
        return  doctorRepository.findAll();
    }

}
