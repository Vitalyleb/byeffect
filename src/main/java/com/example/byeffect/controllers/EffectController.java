package com.example.byeffect.controllers;

import com.example.byeffect.services.EffectService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
@RequiredArgsConstructor
public class EffectController {
    private final EffectService effectService;
    @GetMapping("/")
    public String effects(Model model){
        model.addAttribute("effects", effectService.listEffects());
        return "effects";
    }
}
