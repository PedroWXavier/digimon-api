package io.github.pedrowxavier.digimonapi.business.service;

import io.github.pedrowxavier.digimonapi.infraestructure.entity.GameEntity;
import io.github.pedrowxavier.digimonapi.infraestructure.repository.GameRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@AllArgsConstructor
public class GameService {
    private GameRepository gameRepository;

    public List<GameEntity> getAllGames(){
        return gameRepository.findAll();
    }
}
