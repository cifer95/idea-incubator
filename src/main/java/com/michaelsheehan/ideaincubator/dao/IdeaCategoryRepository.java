package com.michaelsheehan.ideaincubator.dao;

import com.michaelsheehan.ideaincubator.entities.IdeaCategory;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.web.bind.annotation.CrossOrigin;

@CrossOrigin({"http://localhost:4200", "http://localhost:8000"})
@RepositoryRestResource(collectionResourceRel = "ideaCategory", path = "idea-category")
public interface IdeaCategoryRepository extends JpaRepository<IdeaCategory, Long> {
}
