-- CREATE SCHEMA

CREATE SCHEMA IF NOT EXISTS pets
DEFAULT CHARACTER SET utf8;

USE pets;

-- CREATE USERS TABLE

CREATE TABLE IF NOT EXISTS kitten (
    id              INTEGER       NOT NULL  AUTO_INCREMENT PRIMARY KEY,
    name            VARCHAR(25)   NOT NULL,
    likes           INTEGER       NOT NULL  DEFAULT 0
);


CREATE TABLE IF NOT EXISTS cat (
    id              INTEGER       NOT NULL  AUTO_INCREMENT PRIMARY KEY,
    name            VARCHAR(25)   NOT NULL,
    age             INTEGER       NOT NULL  DEFAULT 0
);

CREATE TABLE IF NOT EXISTS hobby (
    id              INTEGER       NOT NULL  AUTO_INCREMENT PRIMARY KEY,
    name            VARCHAR(25)   NOT NULL
);

CREATE TABLE IF NOT EXISTS cat_hobby (
    id              INTEGER       NOT NULL  AUTO_INCREMENT PRIMARY KEY,
    cat_id          INTEGER       NOT NULL,
    hobby_id        INTEGER       NOT NULL,

    FOREIGN KEY (cat_id)
        REFERENCES cat(id),

    FOREIGN KEY (hobby_id)
        REFERENCES hobby(id)
);

CREATE TABLE IF NOT EXISTS dog (
    id              INTEGER       NOT NULL  AUTO_INCREMENT PRIMARY KEY,
    name            VARCHAR(25)   NOT NULL
);

--
-- Dumping data for table `artists`
--

INSERT INTO kitten (name) 
     VALUES ('Fluffy the Destroyer'),
            ('Nick Furry the Tabby'),
            ('Katy Purry'),
            ('Cat Benatar'),
            ('Jennifurr'),
            ('Meowsie'),
            ('Fishbait'),
            ('Puddy Tat'),
            ('Purrito'),
            ('Yeti'),
            ('Cindy Clawford'),
            ('Meatball'),
            ('Cheddar'),
            ('Marshmallow'),
            ('Nugget'),
            ('Ramen'),
            ('Porkchop'),
            ('Porky'),
            ('Sriracha'),
            ('Tink'),
            ('Ricky Ticky Tabby'),
            ('Boots'),
            ('Buttons'),
            ('Bubbles'),
            ('Cha Cha'),
            ('Cheerio'),
            ('Baloo'),
            ('Jelly'),
            ('Opie'),
            ('Stitch'),
            ('Wasabi'),
            ('Sushi'),
            ('Seuss'),
            ('Kermit'),
            ('Miss Piggy'),
            ('Pikachu'),
            ('Catzilla'),
            ('Clawdia'),
            ('Grizabella'),
            ('Mr. Mistoffelees'),
            ('Rum Tum Tugger'),
            ('Bombalurina'),
            ('Macavity'),
            ('Munkustrap'),
            ('Skimbleshanks'),
            ('Jennyanydots'),
            ('Old Deuteronomy'),
            ('Jellylorum'),
            ('Griddlebone'),
            ('Bustopher Jones'),
            ('Rumpus Cat'),
            ('Carbucketty'),
            ('Rumpleteazer'),
            ('Pouncival'),
            ('Growltiger'),
            ('Angus'),
            ('Big Boy'),
            ('Boomer'),
            ('Dough Boy'),
            ('Mr. T'),
            ('Bertha'),
            ('Jiggles'),
            ('Meaty'),
            ('Quake'),
            ('Machu Picchu'),
            ('Munchkin'),
            ('Molecule')
;

INSERT INTO cat (name, age) 
     VALUES ('Candy', 7),
            ('Turbo', 8),
            ('Rambo', 1),
            ('Twinky', 2),
            ('Frodo', 18),
            ('Burrito', 10),
            ('Bacon', 9),
            ('Muffin', 4),
            ('Hobbes', 3),
            ('Quimby', 2)
;

INSERT INTO hobby (name) 
     VALUES ('Walks on the beach'),
            ('Peeing on stuff'),
            ('Meowing'),
            ('Purring'),
            ('Eating'),
            ('Scratching people when they least suspect it'),
            ('Getting stuck in boxes'),
            ('Sleeping in boxes'),
            ('Throwing up'),
            ('Licking my butt')
;

INSERT INTO cat_hobby (cat_id, hobby_id) 
     VALUES (1, 1),
            (1, 2),
            (1, 3),
            (1, 4),
            (2, 2),
            (2, 3),
            (2, 9),
            (2, 5),
            (3, 8),
            (3, 10),
            (3, 8),
            (4, 7),
            (4, 6),
            (4, 5),
            (5, 3),
            (5, 2),
            (5, 10),
            (5, 9),
            (5, 3),
            (6, 3),
            (7, 3),
            (8, 3),
            (9, 3),
            (10, 3)
;

