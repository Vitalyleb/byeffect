package com.example.byeffect.repositories;

import com.example.byeffect.models.Effect;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface EffectRepository extends CrudRepository<Effect, Long> {
//    List<Effect> findByEff(String eff);
 Effect getById(Long id);

}