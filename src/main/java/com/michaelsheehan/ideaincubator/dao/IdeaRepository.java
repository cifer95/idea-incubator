package com.michaelsheehan.ideaincubator.dao;

import com.michaelsheehan.ideaincubator.entities.Idea;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestParam;

@CrossOrigin({"http://localhost:4200", "http://localhost:3000"})
public interface IdeaRepository extends JpaRepository<Idea, Long> {

    Page<Idea> findByStatusId(@RequestParam("id") Long id, Pageable pageable);

    Page<Idea> findByIdeaNameIgnoreCase(@RequestParam("name") String name, Pageable pageable);
}
