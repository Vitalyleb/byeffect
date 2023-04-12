package com.example.byeffect.services;

import com.example.byeffect.models.Effect;
import com.example.byeffect.repositories.EffectRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class EffectServiceImpl implements EffectService{
    @Autowired
    private  EffectRepository effectRepository;

    @Override
    public Effect getEffect(Long id) {
        return effectRepository.getById(id);
//        return effectRepository.getById(id).orElseThrow(()->new NullPointerException());
    }

    @Override
    public List<Effect> getAllEffects() {
        return effectRepository.findAll();
    }


    public EffectRepository getEffectRepository() {
        return effectRepository;
    }

    public void setEffectRepository(EffectRepository effectRepository) {
        this.effectRepository = effectRepository;
    }
}







