package io.github.pedrowxavier.digimonapi.infraestructure.repository;

import io.github.pedrowxavier.digimonapi.application.enums.DigimonTypeEnum;
import io.github.pedrowxavier.digimonapi.infraestructure.entity.DigimonTypeEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DigimonTypeRepository extends JpaRepository<DigimonTypeEntity, DigimonTypeEnum> {
}
