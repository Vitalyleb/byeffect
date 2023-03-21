package com.example.byeffect.services;

import com.example.byeffect.controllers.EffectController;
import com.example.byeffect.models.Effect;
import com.example.byeffect.repositories.EffectRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
@Slf4j
public class EffectService {
    @Autowired
    private  EffectRepository effectRepository;

    public List<Effect> listEffects(String eff) {
        if (eff != null) return effectRepository.findByEff(eff);
        return effectRepository.findAll();
    }
    public List<Effect> getall (){
        String result = "";
        List<Effect> effects = effectRepository.findAll();
        return effectRepository.findAll();
        }

    }





