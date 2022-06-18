package com.michaelsheehan.ideaincubator.entities;

import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import javax.persistence.*;
import java.util.Date;
import java.util.Set;

@Entity
@Table(name = "ideas")
@Getter
@Setter
public class Idea {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "idea_name")
    private String ideaName;

    @ManyToMany(mappedBy = "ideas")
    private Set<IdeaCategory> categories;

    @Column(name = "anticipated_outcomes")
    private String anticipatedOutcomes;

    @Column(name = "situation")
    private String situation;

    @Column(name = "proposed_solution")
    private String proposedSolution;

    @Column(name = "steps_involved")
    private String stepsInvolved;

    @Column(name = "benefits_who")
    private String benefitsWho;

    @Column(name = "potential_obstacles")
    private String potentialObstacles;

    @ManyToMany(mappedBy = "ideas")
    private Set<IdeaResource> resources;

    @Column(name = "research")
    private String research;

    @ManyToOne
    @JoinColumn(name = "status_id", nullable = false)
    private IdeaStatus status;

    @Column(name = "date_created")
    @CreationTimestamp
    private Date dateCreated;

    @Column(name = "last_updated")
    @UpdateTimestamp
    private Date lastUpdated;
}
