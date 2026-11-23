-- Fonte: https://digimon-lines.com/games/dsts (Digimon Story: Time Stranger)
INSERT INTO evolution (game_code, from_digimon_id, to_digimon_id)
SELECT e.game_code, f.id, t.id
FROM (VALUES
          -- Linha do Agumon
          ('TIME_STRANGER', 'Botamon', 'Koromon'),
          ('TIME_STRANGER', 'Koromon', 'Agumon'),
          ('TIME_STRANGER', 'Agumon', 'Greymon'),
          ('TIME_STRANGER', 'Agumon', 'GeoGreymon'),
          ('TIME_STRANGER', 'Agumon', 'Numemon'),
          ('TIME_STRANGER', 'Greymon', 'MetalGreymon'),
          ('TIME_STRANGER', 'GeoGreymon', 'RizeGreymon'),
          ('TIME_STRANGER', 'MetalGreymon', 'WarGreymon'),
          ('TIME_STRANGER', 'WarGreymon', 'Omnimon'),

          -- Linha do Gabumon
          ('TIME_STRANGER', 'Punimon', 'Tsunomon'),
          ('TIME_STRANGER', 'Tsunomon', 'Gabumon'),
          ('TIME_STRANGER', 'Gabumon', 'Garurumon'),
          ('TIME_STRANGER', 'Garurumon', 'WereGarurumon'),
          ('TIME_STRANGER', 'WereGarurumon', 'MetalGarurumon'),
          ('TIME_STRANGER', 'MetalGarurumon', 'Omnimon'),

          -- Linha do Patamon
          ('TIME_STRANGER', 'Poyomon', 'Tokomon'),
          ('TIME_STRANGER', 'Tokomon', 'Patamon'),
          ('TIME_STRANGER', 'Patamon', 'Angemon'),
          ('TIME_STRANGER', 'Angemon', 'MagnaAngemon'),
          ('TIME_STRANGER', 'MagnaAngemon', 'Seraphimon')) AS e (game_code, from_name, to_name)
         LEFT JOIN digimon f ON f.game_code = e.game_code AND f.name = e.from_name
         LEFT JOIN digimon t ON t.game_code = e.game_code AND t.name = e.to_name;