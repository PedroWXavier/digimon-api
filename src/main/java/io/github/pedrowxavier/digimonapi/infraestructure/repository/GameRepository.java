package io.github.pedrowxavier.digimonapi.infraestructure.repository;

import io.github.pedrowxavier.digimonapi.application.enums.GameEnum;
import io.github.pedrowxavier.digimonapi.infraestructure.entity.GameEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface GameRepository extends JpaRepository<GameEntity, GameEnum> {
}
