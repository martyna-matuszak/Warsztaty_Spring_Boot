package pl.coderslab.demo_project.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.demo_project.entity.Clinic;
import pl.coderslab.demo_project.entity.Doctor;

public interface DoctorRepository extends JpaRepository<Doctor, Long> {
}
