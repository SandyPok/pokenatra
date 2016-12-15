DROP TABLE IF EXISTS pokemons;
  --DROP TABLE IF EXISTS artists;

create table pokemons (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  poke_type VARCHAR(255),
  cp INTEGER,
  img_url VARCHAR(255)
);
