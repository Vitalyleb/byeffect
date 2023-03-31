package com.example.byeffect.models;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

import java.util.Set;

@Entity
@Table(name = "Preparation")
@Data
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(of = {"preName"})

public class Medication {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;
    private String preName;
    @ManyToMany(mappedBy = "medications")
    private Set<Effect> effects;
}
