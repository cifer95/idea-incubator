package com.michaelsheehan.ideaincubator;

import com.michaelsheehan.ideaincubator.dao.IdeaCategoryRepository;
import com.michaelsheehan.ideaincubator.dao.IdeaRepository;
import com.michaelsheehan.ideaincubator.dao.IdeaResourceRepository;
import com.michaelsheehan.ideaincubator.dao.IdeaStatusRepository;
import com.michaelsheehan.ideaincubator.entities.Idea;
import com.michaelsheehan.ideaincubator.entities.IdeaCategory;
import com.michaelsheehan.ideaincubator.entities.IdeaResource;
import com.michaelsheehan.ideaincubator.entities.IdeaStatus;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

@SpringBootApplication
public class IdeaIncubatorApplication {

    public static void main(String[] args) {
        SpringApplication.run(IdeaIncubatorApplication.class, args);
    }

}
