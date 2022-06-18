package com.michaelsheehan.ideaincubator.entities;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Set;

@Entity
@Table(name = "idea_resources")
@Data
@NoArgsConstructor
public class IdeaResource {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "resource_name")
    private String resourceName;

    @ManyToMany
    @JoinTable(
            name = "idea_resource",
            joinColumns = @JoinColumn(name = "resource_id"),
            inverseJoinColumns = @JoinColumn(name = "idea_id")
    )
    private Set<Idea> ideas;

    public IdeaResource(String resourceName) {
        this.resourceName = resourceName;
    }
}
