package io.github.pedrowxavier.digimonapi.infraestructure.entity;

import io.github.pedrowxavier.digimonapi.application.enums.GameEnum;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "game")
@NoArgsConstructor
@Getter
@Setter
public class GameEntity {
    @Id
    @Enumerated(EnumType.STRING)
    private GameEnum code;
}
