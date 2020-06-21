package pl.coderslab.demo_project.converter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;
import pl.coderslab.demo_project.entity.Clinic;
import pl.coderslab.demo_project.entity.Doctor;
import pl.coderslab.demo_project.repository.ClinicRepository;
import pl.coderslab.demo_project.repository.DoctorRepository;

import javax.print.Doc;
import java.util.Optional;

@Component
public class DoctorConverter implements Converter<String, Doctor> {

    @Autowired
    DoctorRepository doctorRepository;

    @Override
    public Doctor convert(String sourceId) {
        Optional<Doctor> doctorOptional = doctorRepository.findById(Long.parseLong(sourceId));
        Doctor doctor = null;
        try {
            doctor = doctorOptional.orElseThrow(Exception::new);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return doctor;
    }
}
