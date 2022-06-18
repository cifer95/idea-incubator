package com.michaelsheehan.ideaincubator.entities;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.Set;

@Entity
@Table(name = "idea_status")
@Getter
@Setter
public class IdeaStatus {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "status_name")
    private String statusName;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "status")
    private Set<Idea> ideas;
}
