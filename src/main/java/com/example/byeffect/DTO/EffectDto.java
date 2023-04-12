package com.example.byeffect.DTO;

import com.example.byeffect.models.Medication;
import lombok.*;

import java.util.Set;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor

public class EffectDto {
    private Long id;
    private String effectOfAntidepresant;
    private Set<Medication> preparations;
}
