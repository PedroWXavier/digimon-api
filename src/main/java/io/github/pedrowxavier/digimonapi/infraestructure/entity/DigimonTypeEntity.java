package io.github.pedrowxavier.digimonapi.infraestructure.entity;

import io.github.pedrowxavier.digimonapi.application.enums.DigimonTypeEnum;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "digimon_type")
@NoArgsConstructor
@Getter
@Setter
public class DigimonTypeEntity {
    @Id
    @Enumerated(EnumType.STRING)
    private DigimonTypeEnum code;
}
