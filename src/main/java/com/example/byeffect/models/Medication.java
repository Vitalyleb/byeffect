package com.example.byeffect.models;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

import java.util.Set;

@Entity
@Table(name = "preparation")
@Data
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(of = {"pre_name"})

public class Medication {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;
    private String pre_name;
    @ManyToMany(mappedBy = "preparations")
    private Set<Effect> effects;
}