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
    public List<Effect> listEffects() {
        return effects;
    }

    public void saveEffect(Effect effect) {
        effect.setId(++ID);
        effects.add(effect);
    }

    public Effect getEffectById(Long id) {
        for (Effect effect : effects) {
            if (effect.getId().equals(id))
                return effect;
        }
        return null;
    }
}


