package cz.czechitas.java2webapps.lekce10.service;

import cz.czechitas.java2webapps.lekce10.entity.Student;
import cz.czechitas.java2webapps.lekce10.entity.Trida;
import cz.czechitas.java2webapps.lekce10.repository.StudentRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentiService {
    private final StudentRepository studentRepository;

    public StudentiService(StudentRepository studentRepository) {
        this.studentRepository = studentRepository;
    }

    /**
     * Vrací seznam všech studentů.
     * @return Seznam studentů.
     */
    public List<Student> findAll() {
        return studentRepository.findAll();
    }

    /**
     * Vrací detail studenta.
     * @param id Identifikátor studenta.
     * @return Detail studenta nebo {@code null}.
     */
    public Student findById(int id) {
        return studentRepository.findById(id).orElse(null);
    }


}
