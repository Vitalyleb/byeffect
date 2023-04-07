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

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getPre_name() {
        return pre_name;
    }

    public void setPre_name(String pre_name) {
        this.pre_name = pre_name;
    }

    public Set<Effect> getEffects() {
        return effects;
    }

    public void setEffects(Set<Effect> effects) {
        this.effects = effects;
    }
}
