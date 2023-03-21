package com.example.byeffect.controllers;

import com.example.byeffect.models.Effect;
import com.example.byeffect.services.EffectService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RequestMapping("/effect")
@RestController
public class EffectController {
    @Autowired
    private  EffectService effectService;

    @GetMapping("/all")
    public ResponseEntity<List<Effect>> effect (){
        return ResponseEntity.ok(effectService.getall());
    }

}
