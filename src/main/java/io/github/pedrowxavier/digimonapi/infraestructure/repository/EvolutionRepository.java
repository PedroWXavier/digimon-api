package io.github.pedrowxavier.digimonapi.infraestructure.repository;

import io.github.pedrowxavier.digimonapi.infraestructure.entity.EvolutionEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.UUID;

public interface EvolutionRepository extends JpaRepository<EvolutionEntity, UUID> {
}
