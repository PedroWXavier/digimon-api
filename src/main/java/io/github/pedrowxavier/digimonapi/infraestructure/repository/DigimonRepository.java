package io.github.pedrowxavier.digimonapi.infraestructure.repository;

import io.github.pedrowxavier.digimonapi.infraestructure.entity.DigimonEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.UUID;

public interface DigimonRepository extends JpaRepository<DigimonEntity, UUID> {
}
