package com.example.byeffect.DTO;

import lombok.*;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor

public class MedicationDto {
    private Long id;
    private String preName;
}
