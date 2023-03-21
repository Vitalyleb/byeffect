package com.example.byeffect.controllers;

import com.example.byeffect.services.EffectService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequiredArgsConstructor
public class EffectController {
    private final EffectService effectService;
    @GetMapping("/")
    public String effects(@RequestParam(name = "title", required = false)String title, Model model){
        model.addAttribute("effects", effectService.listEffects(title));
        return "effects";
    }
}
