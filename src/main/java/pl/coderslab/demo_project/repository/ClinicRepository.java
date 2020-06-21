package pl.coderslab.demo_project.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.demo_project.entity.Clinic;

public interface ClinicRepository extends JpaRepository<Clinic, Long> {
}
