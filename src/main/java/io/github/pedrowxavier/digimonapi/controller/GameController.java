package io.github.pedrowxavier.digimonapi.controller;

import io.github.pedrowxavier.digimonapi.business.service.GameService;
import io.github.pedrowxavier.digimonapi.infraestructure.entity.GameEntity;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@AllArgsConstructor
public class GameController {
    private GameService gameService;

    @GetMapping
    public List<GameEntity> getAllGames(){
        return gameService.getAllGames();
    }

}
