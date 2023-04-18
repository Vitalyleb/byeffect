package com.example.byeffect.controllers;

import com.example.byeffect.DTO.EffectDto;
import com.example.byeffect.DTO.MedicationDto;
import com.example.byeffect.Mappers.EffectMapper;
import com.example.byeffect.models.Medication;
import com.example.byeffect.services.EffectService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;


@Controller
@RequiredArgsConstructor
public class EffectController {

    private final EffectService effectService;

    @GetMapping("/get_all")
    public String showAll(Model model) {
        List<EffectDto> effectDtos = effectService.getAllEffects().stream().
                map(EffectMapper.INSTANCE::toDTO).
                toList();
        model.addAttribute("effects",effectDtos);
        return "effect";
    }


    private Set<MedicationDto> toDTOs(Set<Medication> medication) {
        return medication.stream().map(this::toDTO).collect(Collectors.toSet());

    }

    private MedicationDto toDTO(Medication medication) {
        return MedicationDto.builder()
                .id(medication.getId())
                .pre_name(medication.getPre_name()).
                build();

    }

    public EffectService getEffectService() {
        return effectService;
    }
}
