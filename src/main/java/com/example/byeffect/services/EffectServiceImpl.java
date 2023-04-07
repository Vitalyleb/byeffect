package com.example.byeffect.services;

import com.example.byeffect.models.Effect;
import com.example.byeffect.repositories.EffectRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class EffectServiceImpl implements EffectService{
    @Autowired
    private  EffectRepository effectRepository;

    @Override
    public Effect getEffect(Long id) {
        return effectRepository.getById(id).get();
//        return effectRepository.getById(id).orElseThrow(()->new NullPointerException());
    }
}







