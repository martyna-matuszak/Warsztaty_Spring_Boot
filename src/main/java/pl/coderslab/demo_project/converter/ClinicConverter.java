package pl.coderslab.demo_project.converter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;
import pl.coderslab.demo_project.entity.Clinic;
import pl.coderslab.demo_project.repository.ClinicRepository;

import java.util.Optional;

@Component
public class ClinicConverter implements Converter<String, Clinic> {

    @Autowired
    ClinicRepository clinicRepository;

    @Override
    public Clinic convert(String sourceId) {
        Optional<Clinic> clinicOptional = clinicRepository.findById(Long.parseLong(sourceId));
        Clinic clinic = null;
        try {
            clinic = clinicOptional.orElseThrow(Exception::new);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return clinic;
    }
}
