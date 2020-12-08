CREATE TABLE games(
    id integer PRIMARY KEY, 
    name varchar(30),
    is_multiplayer boolean, 
    platform varchar(20),
    date_published date,
    price money
); 

CREATE TABLE genres(
    id integer PRIMARY KEY, 
    name varchar(30),
    description varchar(200)
);

CREATE TABLE publishers(
    id integer PRIMARY KEY,
    name varchar(30),
    date_founded date,
    website varchar(30)
); 

CREATE TABLE reviews(
    id integer PRIMARY KEY, 
    score decimal,
    description varchar(200),
    date_published date,
    game_id integer REFERENCES games(id) UNIQUE
); 