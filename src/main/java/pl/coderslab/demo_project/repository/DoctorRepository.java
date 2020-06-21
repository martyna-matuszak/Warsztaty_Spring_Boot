package pl.coderslab.demo_project.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.demo_project.entity.Clinic;
import pl.coderslab.demo_project.entity.Doctor;

import java.util.List;

public interface DoctorRepository extends JpaRepository<Doctor, Long> {

    List<Doctor> findAllByClinic(Clinic clinic);
}
