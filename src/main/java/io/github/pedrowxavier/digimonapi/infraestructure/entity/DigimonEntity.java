package io.github.pedrowxavier.digimonapi.infraestructure.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.UUID;

@Entity
@Table(name = "digimon")
@NoArgsConstructor
@Getter
@Setter
public class DigimonEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    private UUID id;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "game_code", nullable = false)
    private GameEntity game;

    @Column(nullable = false)
    private Short number;

    @Column(nullable = false)
    private String name;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "generation_code", nullable = false)
    private GenerationEntity generation;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "attribute_code", nullable = false)
    private AttributeEntity attribute;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "type_code", nullable = false)
    private DigimonTypeEntity type;
}
