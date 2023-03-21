package com.example.byeffect.repositories;

import com.example.byeffect.models.Effect;
import org.springframework.data.jpa.repository.JpaRepository;

public interface EffectRepository extends JpaRepository<Effect, Long> {
  List<Effect> findByTitle(String title);

}
