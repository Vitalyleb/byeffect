package com.example.byeffect.controllers;

import com.example.byeffect.DTO.EffectDto;
import com.example.byeffect.Mappers.EffectMapper;
import com.example.byeffect.models.Effect;
import com.example.byeffect.services.EffectService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;


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

    @GetMapping("/{id}")
    public EffectDto sayHello(@PathVariable Long id){
        Effect effect = effectService.getEffect(id);
        return EffectMapper.INSTANCE.toDTO(effect);
    }
}