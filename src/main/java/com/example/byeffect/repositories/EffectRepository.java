package com.example.byeffect.repositories;

import com.example.byeffect.models.Effect;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface EffectRepository extends JpaRepository<Effect, Long> {
//    List<Effect> findByEff(String eff);
 Effect getById(Long id);

}