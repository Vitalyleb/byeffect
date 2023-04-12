package com.example.byeffect.services;

import com.example.byeffect.models.Effect;

import java.util.List;

public interface EffectService {
    Effect getEffect(Long id);

    List<Effect> getAllEffects();
}
