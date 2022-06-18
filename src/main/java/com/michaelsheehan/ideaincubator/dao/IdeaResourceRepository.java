package com.michaelsheehan.ideaincubator.dao;

import com.michaelsheehan.ideaincubator.entities.IdeaResource;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.web.bind.annotation.CrossOrigin;

@CrossOrigin({"http://localhost:4200", "http://localhost:3000"})
@RepositoryRestResource(collectionResourceRel = "ideaResource", path = "idea-resource")
public interface IdeaResourceRepository extends JpaRepository<IdeaResource, Long> {
}
