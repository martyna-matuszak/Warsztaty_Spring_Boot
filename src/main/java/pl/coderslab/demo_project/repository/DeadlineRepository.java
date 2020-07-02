package pl.coderslab.demo_project.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.demo_project.entity.Clinic;
import pl.coderslab.demo_project.entity.Deadline;
import pl.coderslab.demo_project.entity.Doctor;
import pl.coderslab.demo_project.entity.Patient;

import java.util.List;

public interface DeadlineRepository extends JpaRepository<Deadline, Long> {

    List<Deadline> findAllByPatientIdOrderByDueDate(Long id);
    List<Deadline> findAllByPatientId(Long id);
}
