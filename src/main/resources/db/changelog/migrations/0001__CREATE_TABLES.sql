CREATE TABLE game (
                      code text PRIMARY KEY
);

CREATE TABLE attribute (
                           code text PRIMARY KEY
);

CREATE TABLE digimon_type (
                              code text PRIMARY KEY
);

CREATE TABLE generation (
                            code text PRIMARY KEY,
                            rank smallint NOT NULL UNIQUE
);

CREATE TABLE digimon (
                         id              uuid PRIMARY KEY DEFAULT gen_random_uuid(),
                         game_code       text NOT NULL REFERENCES game (code) ON UPDATE CASCADE,
                         number          text NOT NULL,
                         name            text NOT NULL,
                         generation_code text NOT NULL REFERENCES generation (code) ON UPDATE CASCADE,
                         attribute_code  text NOT NULL REFERENCES attribute (code) ON UPDATE CASCADE,
                         type_code       text NOT NULL REFERENCES digimon_type (code) ON UPDATE CASCADE,

                         UNIQUE (game_code, number),
                         UNIQUE (game_code, name),
                         UNIQUE (id, game_code)
);

CREATE INDEX idx_digimon_generation ON digimon (game_code, generation_code);
CREATE INDEX idx_digimon_attribute  ON digimon (game_code, attribute_code);
CREATE INDEX idx_digimon_type       ON digimon (game_code, type_code);

CREATE TABLE evolution (
                           id              uuid PRIMARY KEY DEFAULT gen_random_uuid(),
                           game_code       text NOT NULL,
                           from_digimon_id uuid NOT NULL,
                           to_digimon_id   uuid NOT NULL,

                           FOREIGN KEY (from_digimon_id, game_code)
                               REFERENCES digimon (id, game_code) ON UPDATE CASCADE ON DELETE CASCADE,
                           FOREIGN KEY (to_digimon_id, game_code)
                               REFERENCES digimon (id, game_code) ON UPDATE CASCADE ON DELETE CASCADE,

                           UNIQUE (game_code, from_digimon_id, to_digimon_id),
                           CHECK (from_digimon_id <> to_digimon_id)
);

CREATE INDEX idx_evolution_from ON evolution (from_digimon_id);
CREATE INDEX idx_evolution_to   ON evolution (to_digimon_id);