-- Fonte: https://digimon-lines.com/games/dsts (Digimon Story: Time Stranger)
INSERT INTO digimon (game_code, number, name, generation_code, attribute_code, type_code)
VALUES
    -- Linha do Agumon
    ('TIME_STRANGER', 6, 'Botamon', 'IN_TRAINING_I', 'NO_DATA', 'SLIME'),
    ('TIME_STRANGER', 9, 'Koromon', 'IN_TRAINING_II', 'NO_DATA', 'LESSER'),
    ('TIME_STRANGER', 21, 'Agumon', 'ROOKIE', 'VACCINE', 'REPTILE'),
    ('TIME_STRANGER', 90, 'Greymon', 'CHAMPION', 'VACCINE', 'DINOSAUR'),
    ('TIME_STRANGER', 92, 'GeoGreymon', 'CHAMPION', 'VACCINE', 'DINOSAUR'),
    ('TIME_STRANGER', 160, 'Numemon', 'CHAMPION', 'VIRUS', 'MOLLUSK'),
    ('TIME_STRANGER', 223, 'MetalGreymon', 'ULTIMATE', 'VACCINE', 'ANDROID'),
    ('TIME_STRANGER', 226, 'RizeGreymon', 'ULTIMATE', 'VACCINE', 'ANDROID'),
    ('TIME_STRANGER', 312, 'WarGreymon', 'MEGA', 'VACCINE', 'DRAGON_MAN'),

    -- Linha do Gabumon
    ('TIME_STRANGER', 5, 'Punimon', 'IN_TRAINING_I', 'NO_DATA', 'SLIME'),
    ('TIME_STRANGER', 11, 'Tsunomon', 'IN_TRAINING_II', 'NO_DATA', 'LESSER'),
    ('TIME_STRANGER', 43, 'Gabumon', 'ROOKIE', 'DATA', 'REPTILE'),
    ('TIME_STRANGER', 87, 'Garurumon', 'CHAMPION', 'VACCINE', 'BEAST'),
    ('TIME_STRANGER', 229, 'WereGarurumon', 'ULTIMATE', 'VACCINE', 'BEAST_MAN'),
    ('TIME_STRANGER', 364, 'MetalGarurumon', 'MEGA', 'DATA', 'ANDROID'),

    -- Fusão (WarGreymon + MetalGarurumon)
    ('TIME_STRANGER', 430, 'Omnimon', 'MEGA_PLUS', 'VACCINE', 'HOLY_KNIGHT'),

    -- Linha do Patamon
    ('TIME_STRANGER', 7, 'Poyomon', 'IN_TRAINING_I', 'NO_DATA', 'SLIME'),
    ('TIME_STRANGER', 13, 'Tokomon', 'IN_TRAINING_II', 'NO_DATA', 'LESSER'),
    ('TIME_STRANGER', 51, 'Patamon', 'ROOKIE', 'DATA', 'MAMMAL'),
    ('TIME_STRANGER', 84, 'Angemon', 'CHAMPION', 'VACCINE', 'ANGEL'),
    ('TIME_STRANGER', 221, 'MagnaAngemon', 'ULTIMATE', 'VACCINE', 'HIGH_ANGEL'),
    ('TIME_STRANGER', 328, 'Seraphimon', 'MEGA', 'VACCINE', 'SERAPH');