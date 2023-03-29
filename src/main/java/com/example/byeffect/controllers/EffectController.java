package com.example.byeffect.controllers;

import com.example.byeffect.services.EffectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


@Controller
public class EffectController {
    @Autowired
    private EffectService effectService;

    @GetMapping("/a")
    public String effects(@RequestParam(name = "eff", required = false) String eff, Model model) {
        model.addAttribute("effects", effectService.listEffects(eff));
        return "effect";
    }

    @GetMapping("/calculation")
    public String effectCalc() {
//        model.addAttribute("product", effectService.getEffectById(id));
        return "effectCalculation";
    }
//    @GetMapping("/all")
//    public ResponseEntity<List<Effect>> effect (){
//        return ResponseEntity.ok(effectService.getall()) ;
//    }
}