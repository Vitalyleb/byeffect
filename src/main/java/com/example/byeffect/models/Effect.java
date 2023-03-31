package com.example.byeffect.models;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Generated;
import lombok.NoArgsConstructor;

import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "postgre")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Effect {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long id;
    @Column(name = "effects of antidepresants", columnDefinition = "text")
    private String eff;
//    @Column(name = "preparation", columnDefinition = "text")
//    private String pre;
    @ManyToMany(cascade = {CascadeType.PERSIST, CascadeType.MERGE})
    @JoinTable(
            name = "eff_pre",
            joinColumns = @JoinColumn(name = "eff_id"),
            inverseJoinColumns = @JoinColumn(name = "pre_id"))

    private Set<Medication> medications = new HashSet<>();

    public void addMedication(Medication medication){
        medications.remove(medication);
        medication.getEffects().add(this);
    }

    public void removeMedication(Medication medication){
        medications.remove(medication);
        medication.getEffects().remove(this);
    }
}