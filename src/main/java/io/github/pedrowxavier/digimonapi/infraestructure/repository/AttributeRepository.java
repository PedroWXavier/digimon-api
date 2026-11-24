package io.github.pedrowxavier.digimonapi.infraestructure.repository;

import io.github.pedrowxavier.digimonapi.application.enums.AttributeEnum;
import io.github.pedrowxavier.digimonapi.infraestructure.entity.AttributeEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AttributeRepository extends JpaRepository<AttributeEntity, AttributeEnum> {
}
