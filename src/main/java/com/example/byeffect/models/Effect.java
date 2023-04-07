package com.example.byeffect.models;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "effect")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Effect {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long id;
    @Column(name = "effect_of_antidepresant", columnDefinition = "text")
    private String effectOfAntidepresant;
    @ManyToMany(cascade = {CascadeType.PERSIST, CascadeType.MERGE})
    @JoinTable(
            name = "effect_preparation",
            joinColumns = @JoinColumn(name = "eff_id"),
            inverseJoinColumns = @JoinColumn(name = "pre_id"))

    private Set<Medication> preparations = new HashSet<>();

    public void addMedication(Medication medication){
        preparations.remove(medication);
        medication.getEffects().add(this);
    }

    public void removeMedication(Medication medication){
        preparations.remove(medication);
        medication.getEffects().remove(this);
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getEffectOfAntidepresant() {
        return effectOfAntidepresant;
    }

    public void setEffectOfAntidepresant(String effectOfAntidepresant) {
        this.effectOfAntidepresant = effectOfAntidepresant;
    }

    public Set<Medication> getPreparations() {
        return preparations;
    }

    public void setPreparations(Set<Medication> preparations) {
        this.preparations = preparations;
    }
}