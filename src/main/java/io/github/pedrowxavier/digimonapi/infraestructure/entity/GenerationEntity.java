package io.github.pedrowxavier.digimonapi.infraestructure.entity;

import io.github.pedrowxavier.digimonapi.application.enums.GenerationEnum;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "generation")
@NoArgsConstructor
@Getter
@Setter
public class GenerationEntity {
    @Id
    @Enumerated(EnumType.STRING)
    private GenerationEnum code;
    @Column(nullable = false, unique = true)
    private Short rank;
}
