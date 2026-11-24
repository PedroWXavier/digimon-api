package io.github.pedrowxavier.digimonapi.infraestructure.repository;

import io.github.pedrowxavier.digimonapi.application.enums.GenerationEnum;
import io.github.pedrowxavier.digimonapi.infraestructure.entity.GenerationEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface GenerationRepository extends JpaRepository<GenerationEntity, GenerationEnum> {
}
