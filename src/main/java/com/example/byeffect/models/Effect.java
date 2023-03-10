package com.example.byeffect.models;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Generated;
import lombok.NoArgsConstructor;

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
    @Column(name = "preparation", columnDefinition = "text")
    private String pre;
}
