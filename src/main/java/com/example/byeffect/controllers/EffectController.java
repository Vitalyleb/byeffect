package com.example.byeffect.controllers;

import com.example.byeffect.DTO.EffectDto;
import com.example.byeffect.DTO.MedicationDto;
import com.example.byeffect.models.Effect;
import com.example.byeffect.models.Medication;
import com.example.byeffect.services.EffectService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import com.example.byeffect.models.Effect;

import java.util.Set;
import java.util.stream.Collectors;


@RestController
@RequiredArgsConstructor
public class EffectController {

    private final EffectService effectService;

//    @GetMapping("/a")
//    public String effects(@RequestParam(name = "eff", required = false) String eff, Model model) {
//        model.addAttribute("effects", effectService.listEffects(eff));
//        return "effect";
//    }


//    @GetMapping("/calculation")
//    public String effectCalc() {
////        model.addAttribute("product", effectService.getEffectById(id));
//        return "effectCalculation";
//    }
//    @GetMapping("/all")
//    public ResponseEntity<List<Effect>> effect (){
//        return ResponseEntity.ok(effectService.getall()) ;
//    }

    @GetMapping("/a/{id}")
    public EffectDto sayHello(@PathVariable Long id){
        Effect effect = effectService.getEffect(id);
        return toDTO(effect);
    }

   private EffectDto toDTO(Effect effect){
        Set<MedicationDto> medicationDtos = toDTOs(effect.getMedications());
        return EffectDto.builder()
                .id(effect.getId())
                .eff(effect.getEff())
                .medication(medicationDtos)
                .build();
   }

    private Set<MedicationDto> toDTOs(Set<Medication> medication){
        return  medication.stream().map(medication1 -> toDTO(medication1)).collect(Collectors.toSet());

    }

    private MedicationDto toDTO(Medication medication){
        return MedicationDto.builder()
                .id(medication.getId())
                .preName(medication.getPreName()).
                build();

    }
}