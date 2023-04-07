package com.example.byeffect.DTO;

import lombok.*;

import java.util.Set;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor

public class EffectDto {
    private Long id;
    private String effect_of_antidepresant;
    private Set<MedicationDto> preparation;
}
