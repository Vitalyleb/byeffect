package com.example.byeffect.services;

import com.example.byeffect.controllers.EffectController;
import com.example.byeffect.models.Effect;
import com.example.byeffect.repositories.EffectRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
@RequiredArgsConstructor
@Slf4j
public class EffectService {
    private final EffectRepository effectRepository;

    public List<Effect> listEffects(String title) {
        if (title != null) return effectRepository.findByTitle(title);
        return effectRepository.findAll();
    }
    public void saveEffect (Effect effect){
        log.info("Saving new {}", effect);
        effectRepository.save(effect);
    }

    public Effect getProductById(Long id) {
        return effectRepository.findById(id).orElse(null);
    }
}


