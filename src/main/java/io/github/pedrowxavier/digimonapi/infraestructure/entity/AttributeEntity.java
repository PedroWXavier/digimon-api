package io.github.pedrowxavier.digimonapi.infraestructure.entity;

import io.github.pedrowxavier.digimonapi.application.enums.AttributeEnum;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "attribute")
@NoArgsConstructor
@Getter
@Setter
public class AttributeEntity {
    @Id
    @Enumerated(EnumType.STRING)
    private AttributeEnum code;
}
