CREATE TABLE FILMS (
    TITLE VARCHAR(255),
    EPISODE_ID INT PRIMARY KEY,
    OPENING_CRAWL TEXT,
    DIRECTOR VARCHAR(255),
    PRODUCER VARCHAR(255),
    RELEASE_DATE DATE,
    CREATED TIMESTAMP,
    EDITED TIMESTAMP,
    URL VARCHAR(255)
);

INSERT INTO FILMS (
    TITLE,
    EPISODE_ID,
    OPENING_CRAWL,
    DIRECTOR,
    PRODUCER,
    RELEASE_DATE
) VALUES (
    'A New Hope',
    4,
    'It is a period of civil war.\r\nRebel spaceships, striking\r\nfrom a hidden base, have won\r\ntheir first victory against\r\nthe evil Galactic Empire.\r\n\r\nDuring the battle, Rebel\r\nspies managed to steal secret\r\nplans to the Empire''s\r\nultimate weapon, the DEATH\r\nSTAR, an armored space\r\nstation with enough power\r\nto destroy an entire planet.\r\n\r\nPursued by the Empire''s\r\nsinister agents, Princess\r\nLeia races home aboard her\r\nstarship, custodian of the\r\nstolen plans that can save her\r\npeople and restore\r\nfreedom to the galaxy....',
    'George Lucas',
    'Gary Kurtz, Rick McCallum',
    '1977-05-25'
),
(
    'The Empire Strikes Back',
    5,
    'It is a dark time for the\r\nRebellion. Although the Death\r\nStar has been destroyed,\r\nImperial troops have driven the\r\nRebel forces from their hidden\r\nbase and pursued them across\r\nthe galaxy.\r\n\r\nEvading the dreaded Imperial\r\nStarfleet, a group of freedom\r\nfighters led by Luke Skywalker\r\nhas established a new secret\r\nbase on the remote ice world\r\nof Hoth.\r\n\r\nThe evil lord Darth Vader,\r\nobsessed with finding young\r\nSkywalker, has dispatched\r\nthousands of remote probes into\r\nthe far reaches of space....',
    'Irvin Kershner',
    'Gary Kurtz, Rick McCallum',
    '1980-05-17'
),
(
    'Return of the Jedi',
    6,
    'Luke Skywalker has returned to\r\nhis home planet of Tatooine in\r\nan attempt to rescue his\r\nfriend Han Solo from the\r\nclutches of the vile gangster\r\nJabba the Hutt.\r\n\r\nLittle does Luke know that the\r\nGALACTIC EMPIRE has secretly\r\nbegun construction on a new\r\narmored space station even\r\nmore powerful than the first\r\ndreaded Death Star.\r\n\r\nWhen completed, this ultimate\r\nweapon will spell certain doom\r\nfor the small band of rebels\r\nstruggling to restore freedom\r\nto the galaxy...',
    'Richard Marquand',
    'Howard G. Kazanjian, George Lucas, Rick McCallum',
    '1983-05-25'
),
(
    'The Phantom Menace',
    1,
    'Turmoil has engulfed the\r\nGalactic Republic. The taxation\r\nof trade routes to outlying star\r\nsystems is in dispute.\r\n\r\nHoping to resolve the matter\r\nwith a blockade of deadly\r\nbattleships, the greedy Trade\r\nFederation has stopped all\r\nshipping to the small planet\r\nof Naboo.\r\n\r\nWhile the Congress of the\r\nRepublic endlessly debates\r\nthis alarming chain of events,\r\nthe Supreme Chancellor has\r\nsecretly dispatched two Jedi\r\nKnights, the guardians of\r\npeace and justice in the\r\ngalaxy, to settle the conflict....',
    'George Lucas',
    'Rick McCallum',
    '1999-05-19'
),
(
    'Attack of the Clones',
    2,
    'There is unrest in the Galactic\r\nSenate. Several thousand solar\r\nsystems have declared their\r\nintentions to leave the Republic.\r\n\r\nThis separatist movement,\r\nunder the leadership of the\r\nmysterious Count Dooku, has\r\nmade it difficult for the limited\r\nnumber of Jedi Knights to maintain \r\npeace and order in the galaxy.\r\n\r\nSenator Amidala, the former\r\nQueen of Naboo, is returning\r\nto the Galactic Senate to vote\r\non the critical issue of creating\r\nan ARMY OF THE REPUBLIC\r\nto assist the overwhelmed\r\nJedi....',
    'George Lucas',
    'Rick McCallum',
    '2002-05-16'
),
(
    'Revenge of the Sith',
    3,
    'War! The Republic is crumbling\r\nunder attacks by the ruthless\r\nSith Lord, Count Dooku.\r\nThere are heroes on both sides.\r\nEvil is everywhere.\r\n\r\nIn a stunning move, the\r\nfiendish droid leader, General\r\nGrievous, has swept into the\r\nRepublic capital and kidnapped\r\nChancellor Palpatine, leader of\r\nthe Galactic Senate.\r\n\r\nAs the Separatist Droid Army\r\nattempts to flee the besieged\r\ncapital with their valuable\r\nhostage, two Jedi Knights lead a\r\ndesperate mission to rescue the\r\ncaptive Chancellor....',
    'George Lucas',
    'Rick McCallum',
    '2005-05-19'
);

CREATE TABLE CHARACTERS (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    CHARACTER_URL VARCHAR(255)
);

INSERT INTO CHARACTERS (
    CHARACTER_URL
) VALUES (
    'https://swapi.dev/api/people/1/'
),
(
    'https://swapi.dev/api/people/2/'
),
(
    'https://swapi.dev/api/people/3/'
),
(
    'https://swapi.dev/api/people/4/'
),
(
    'https://swapi.dev/api/people/5/'
),
(
    'https://swapi.dev/api/people/6/'
),
(
    'https://swapi.dev/api/people/7/'
),
(
    'https://swapi.dev/api/people/8/'
),
(
    'https://swapi.dev/api/people/9/'
),
(
    'https://swapi.dev/api/people/10/'
),
(
    'https://swapi.dev/api/people/11/'
),
(
    'https://swapi.dev/api/people/12/'
),
(
    'https://swapi.dev/api/people/13/'
),
(
    'https://swapi.dev/api/people/14/'
),
(
    'https://swapi.dev/api/people/15/'
),
(
    'https://swapi.dev/api/people/16/'
),
(
    'https://swapi.dev/api/people/17/'
),
(
    'https://swapi.dev/api/people/18/'
),
(
    'https://swapi.dev/api/people/19/'
),
(
    'https://swapi.dev/api/people/20/'
),
(
    'https://swapi.dev/api/people/21/'
),
(
    'https://swapi.dev/api/people/22/'
),
(
    'https://swapi.dev/api/people/23/'
),
(
    'https://swapi.dev/api/people/24/'
),
(
    'https://swapi.dev/api/people/25/'
),
(
    'https://swapi.dev/api/people/26/'
),
(
    'https://swapi.dev/api/people/27/'
),
(
    'https://swapi.dev/api/people/28/'
),
(
    'https://swapi.dev/api/people/29/'
),
(
    'https://swapi.dev/api/people/30/'
),
(
    'https://swapi.dev/api/people/31/'
),
(
    'https://swapi.dev/api/people/32/'
),
(
    'https://swapi.dev/api/people/33/'
),
(
    'https://swapi.dev/api/people/34/'
),
(
    'https://swapi.dev/api/people/35/'
),
(
    'https://swapi.dev/api/people/36/'
),
(
    'https://swapi.dev/api/people/37/'
),
(
    'https://swapi.dev/api/people/38/'
),
(
    'https://swapi.dev/api/people/39/'
),
(
    'https://swapi.dev/api/people/40/'
),
(
    'https://swapi.dev/api/people/41/'
),
(
    'https://swapi.dev/api/people/42/'
),
(
    'https://swapi.dev/api/people/43/'
),
(
    'https://swapi.dev/api/people/44/'
),
(
    'https://swapi.dev/api/people/45/'
),
(
    'https://swapi.dev/api/people/46/'
),
(
    'https://swapi.dev/api/people/47/'
),
(
    'https://swapi.dev/api/people/48/'
),
(
    'https://swapi.dev/api/people/49/'
),
(
    'https://swapi.dev/api/people/50/'
),
(
    'https://swapi.dev/api/people/51/'
),
(
    'https://swapi.dev/api/people/52/'
),
(
    'https://swapi.dev/api/people/53/'
),
(
    'https://swapi.dev/api/people/54/'
),
(
    'https://swapi.dev/api/people/55/'
),
(
    'https://swapi.dev/api/people/56/'
),
(
    'https://swapi.dev/api/people/57/'
),
(
    'https://swapi.dev/api/people/58/'
),
(
    'https://swapi.dev/api/people/59/'
),
(
    'https://swapi.dev/api/people/60/'
),
(
    'https://swapi.dev/api/people/61/'
),
(
    'https://swapi.dev/api/people/62/'
),
(
    'https://swapi.dev/api/people/63/'
),
(
    'https://swapi.dev/api/people/64/'
),
(
    'https://swapi.dev/api/people/65/'
),
(
    'https://swapi.dev/api/people/66/'
),
(
    'https://swapi.dev/api/people/67/'
),
(
    'https://swapi.dev/api/people/68/'
),
(
    'https://swapi.dev/api/people/69/'
),
(
    'https://swapi.dev/api/people/70/'
),
(
    'https://swapi.dev/api/people/71/'
),
(
    'https://swapi.dev/api/people/72/'
),
(
    'https://swapi.dev/api/people/73/'
),
(
    'https://swapi.dev/api/people/74/'
),
(
    'https://swapi.dev/api/people/75/'
),
(
    'https://swapi.dev/api/people/76/'
),
(
    'https://swapi.dev/api/people/77/'
),
(
    'https://swapi.dev/api/people/78/'
),
(
    'https://swapi.dev/api/people/79/'
),
(
    'https://swapi.dev/api/people/80/'
),
(
    'https://swapi.dev/api/people/81/'
),
(
    'https://swapi.dev/api/people/82/'
),
(
    'https://swapi.dev/api/people/83/'
),
(
    'https://swapi.dev/api/people/84/'
),
(
    'https://swapi.dev/api/people/85/'
);

CREATE TABLE FILMS_CHARACTERS (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    FILM_EPISODE_ID INT,
    CHARACTER_ID INT,
    FOREIGN KEY (FILM_EPISODE_ID) REFERENCES FILMS(EPISODE_ID) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (CHARACTER_ID) REFERENCES CHARACTERS(ID) ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO FILMS_CHARACTERS (
    FILM_EPISODE_ID,
    CHARACTER_ID
) VALUES (
    4,
    1
),
(
    4,
    3
),
(
    4,
    4
),
(
    4,
    5
),
(
    4,
    6
),
(
    4,
    7
),
(
    4,
    8
),
(
    4,
    9
),
(
    4,
    10
),
(
    4,
    12
),
(
    4,
    13
),
(
    4,
    14
),
(
    4,
    15
),
(
    4,
    16
),
(
    4,
    17
),
(
    4,
    18
),
(
    4,
    19
),
(
    4,
    81
),
(
    5,
    1
),
(
    5,
    2
),
(
    5,
    3
),
(
    5,
    4
),
(
    5,
    5
),
(
    5,
    10
),
(
    5,
    13
),
(
    5,
    14
),
(
    5,
    18
),
(
    5,
    20
),
(
    5,
    21
),
(
    5,
    22
),
(
    5,
    23
),
(
    5,
    24
),
(
    5,
    25
),
(
    5,
    26
),
(
    6,
    1
),
(
    6,
    2
),
(
    6,
    3
),
(
    6,
    4
),
(
    6,
    5
),
(
    6,
    10
),
(
    6,
    13
),
(
    6,
    14
),
(
    6,
    16
),
(
    6,
    18
),
(
    6,
    20
),
(
    6,
    21
),
(
    6,
    22
),
(
    6,
    25
),
(
    6,
    27
),
(
    6,
    28
),
(
    6,
    29
),
(
    6,
    30
),
(
    6,
    31
),
(
    6,
    45
),
(
    1,
    2
),
(
    1,
    3
),
(
    1,
    10
),
(
    1,
    11
),
(
    1,
    16
),
(
    1,
    20
),
(
    1,
    21
),
(
    1,
    32
),
(
    1,
    33
),
(
    1,
    34
),
(
    1,
    35
),
(
    1,
    36
),
(
    1,
    37
),
(
    1,
    38
),
(
    1,
    39
),
(
    1,
    40
),
(
    1,
    41
),
(
    1,
    42
),
(
    1,
    43
),
(
    1,
    44
),
(
    1,
    46
),
(
    1,
    47
),
(
    1,
    48
),
(
    1,
    49
),
(
    1,
    50
),
(
    1,
    51
),
(
    1,
    52
),
(
    1,
    53
),
(
    1,
    54
),
(
    1,
    55
),
(
    1,
    56
),
(
    1,
    57
),
(
    1,
    58
),
(
    1,
    59
),
(
    2,
    2
),
(
    2,
    3
),
(
    2,
    6
),
(
    2,
    7
),
(
    2,
    10
),
(
    2,
    11
),
(
    2,
    20
),
(
    2,
    21
),
(
    2,
    22
),
(
    2,
    33
),
(
    2,
    35
),
(
    2,
    36
),
(
    2,
    40
),
(
    2,
    43
),
(
    2,
    46
),
(
    2,
    51
),
(
    2,
    52
),
(
    2,
    53
),
(
    2,
    58
),
(
    2,
    59
),
(
    2,
    60
),
(
    2,
    61
),
(
    2,
    62
),
(
    2,
    63
),
(
    2,
    64
),
(
    2,
    65
),
(
    2,
    66
),
(
    2,
    67
),
(
    2,
    68
),
(
    2,
    69
),
(
    2,
    70
),
(
    2,
    71
),
(
    2,
    72
),
(
    2,
    73
),
(
    2,
    74
),
(
    2,
    75
),
(
    2,
    76
),
(
    2,
    77
),
(
    2,
    78
),
(
    2,
    82
),
(
    3,
    1
),
(
    3,
    2
),
(
    3,
    3
),
(
    3,
    4
),
(
    3,
    5
),
(
    3,
    6
),
(
    3,
    7
),
(
    3,
    10
),
(
    3,
    11
),
(
    3,
    12
),
(
    3,
    13
),
(
    3,
    20
),
(
    3,
    21
),
(
    3,
    33
),
(
    3,
    35
),
(
    3,
    46
),
(
    3,
    51
),
(
    3,
    52
),
(
    3,
    53
),
(
    3,
    54
),
(
    3,
    55
),
(
    3,
    56
),
(
    3,
    58
),
(
    3,
    63
),
(
    3,
    64
),
(
    3,
    67
),
(
    3,
    68
),
(
    3,
    75
),
(
    3,
    78
),
(
    3,
    79
),
(
    3,
    80
),
(
    3,
    81
),
(
    3,
    82
),
(
    3,
    83
);

CREATE TABLE PLANETS (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    PLANET_URL VARCHAR(255)
);

INSERT INTO PLANETS (
    PLANET_URL
) VALUES (
    'https://swapi.dev/api/planets/1/'
),
(
    'https://swapi.dev/api/planets/2/'
),
(
    'https://swapi.dev/api/planets/3/'
),
(
    'https://swapi.dev/api/planets/4/'
),
(
    'https://swapi.dev/api/planets/5/'
),
(
    'https://swapi.dev/api/planets/6/'
),
(
    'https://swapi.dev/api/planets/7/'
),
(
    'https://swapi.dev/api/planets/8/'
),
(
    'https://swapi.dev/api/planets/9/'
),
(
    'https://swapi.dev/api/planets/10/'
),
(
    'https://swapi.dev/api/planets/11/'
),
(
    'https://swapi.dev/api/planets/12/'
),
(
    'https://swapi.dev/api/planets/13/'
),
(
    'https://swapi.dev/api/planets/14/'
),
(
    'https://swapi.dev/api/planets/15/'
),
(
    'https://swapi.dev/api/planets/16/'
),
(
    'https://swapi.dev/api/planets/17/'
),
(
    'https://swapi.dev/api/planets/18/'
),
(
    'https://swapi.dev/api/planets/19/'
),
(
    'https://swapi.dev/api/planets/20/'
),
(
    'https://swapi.dev/api/planets/21/'
),
(
    'https://swapi.dev/api/planets/22/'
),
(
    'https://swapi.dev/api/planets/23/'
),
(
    'https://swapi.dev/api/planets/24/'
),
(
    'https://swapi.dev/api/planets/25/'
),
(
    'https://swapi.dev/api/planets/26/'
),
(
    'https://swapi.dev/api/planets/27/'
),
(
    'https://swapi.dev/api/planets/28/'
),
(
    'https://swapi.dev/api/planets/29/'
),
(
    'https://swapi.dev/api/planets/30/'
),
(
    'https://swapi.dev/api/planets/31/'
),
(
    'https://swapi.dev/api/planets/32/'
),
(
    'https://swapi.dev/api/planets/33/'
),
(
    'https://swapi.dev/api/planets/34/'
),
(
    'https://swapi.dev/api/planets/35/'
),
(
    'https://swapi.dev/api/planets/36/'
),
(
    'https://swapi.dev/api/planets/37/'
),
(
    'https://swapi.dev/api/planets/38/'
),
(
    'https://swapi.dev/api/planets/39/'
),
(
    'https://swapi.dev/api/planets/40/'
),
(
    'https://swapi.dev/api/planets/41/'
),
(
    'https://swapi.dev/api/planets/42/'
),
(
    'https://swapi.dev/api/planets/43/'
),
(
    'https://swapi.dev/api/planets/44/'
),
(
    'https://swapi.dev/api/planets/45/'
),
(
    'https://swapi.dev/api/planets/46/'
),
(
    'https://swapi.dev/api/planets/47/'
),
(
    'https://swapi.dev/api/planets/48/'
),
(
    'https://swapi.dev/api/planets/49/'
),
(
    'https://swapi.dev/api/planets/50/'
);

CREATE TABLE FILMS_PLANETS (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    FILM_EPISODE_ID INT,
    PLANET_ID INT,
    FOREIGN KEY (FILM_EPISODE_ID) REFERENCES FILMS(EPISODE_ID) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (PLANET_ID) REFERENCES PLANETS(ID) ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO FILMS_PLANETS (
    FILM_EPISODE_ID,
    PLANET_ID
) VALUES (
    4,
    1
),
(
    4,
    2
),
(
    4,
    3
),
(
    5,
    4
),
(
    5,
    5
),
(
    5,
    6
),
(
    5,
    27
),
(
    6,
    1
),
(
    6,
    5
),
(
    6,
    7
),
(
    6,
    8
),
(
    6,
    9
),
(
    1,
    1
),
(
    1,
    8
),
(
    1,
    9
),
(
    2,
    1
),
(
    2,
    8
),
(
    2,
    9
),
(
    2,
    10
),
(
    2,
    11
),
(
    3,
    1
),
(
    3,
    2
),
(
    3,
    5
),
(
    3,
    8
),
(
    3,
    9
),
(
    3,
    12
),
(
    3,
    13
),
(
    3,
    14
),
(
    3,
    15
),
(
    3,
    16
),
(
    3,
    17
),
(
    3,
    18
),
(
    3,
    19
);

CREATE TABLE STARSHIPS (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    STARSHIP_URL VARCHAR(255)
);

INSERT INTO STARSHIPS (
    STARSHIP_URL
) VALUES (
    'https://swapi.dev/api/starships/1/'
),
(
    'https://swapi.dev/api/starships/2/'
),
(
    'https://swapi.dev/api/starships/3/'
),
(
    'https://swapi.dev/api/starships/4/'
),
(
    'https://swapi.dev/api/starships/5/'
),
(
    'https://swapi.dev/api/starships/6/'
),
(
    'https://swapi.dev/api/starships/7/'
),
(
    'https://swapi.dev/api/starships/8/'
),
(
    'https://swapi.dev/api/starships/9/'
),
(
    'https://swapi.dev/api/starships/10/'
),
(
    'https://swapi.dev/api/starships/11/'
),
(
    'https://swapi.dev/api/starships/12/'
),
(
    'https://swapi.dev/api/starships/13/'
),
(
    'https://swapi.dev/api/starships/14/'
),
(
    'https://swapi.dev/api/starships/15/'
),
(
    'https://swapi.dev/api/starships/16/'
),
(
    'https://swapi.dev/api/starships/17/'
),
(
    'https://swapi.dev/api/starships/18/'
),
(
    'https://swapi.dev/api/starships/19/'
),
(
    'https://swapi.dev/api/starships/20/'
),
(
    'https://swapi.dev/api/starships/21/'
),
(
    'https://swapi.dev/api/starships/22/'
),
(
    'https://swapi.dev/api/starships/23/'
),
(
    'https://swapi.dev/api/starships/24/'
),
(
    'https://swapi.dev/api/starships/25/'
),
(
    'https://swapi.dev/api/starships/26/'
),
(
    'https://swapi.dev/api/starships/27/'
),
(
    'https://swapi.dev/api/starships/28/'
),
(
    'https://swapi.dev/api/starships/29/'
),
(
    'https://swapi.dev/api/starships/30/'
),
(
    'https://swapi.dev/api/starships/31/'
),
(
    'https://swapi.dev/api/starships/32/'
),
(
    'https://swapi.dev/api/starships/33/'
),
(
    'https://swapi.dev/api/starships/34/'
),
(
    'https://swapi.dev/api/starships/35/'
),
(
    'https://swapi.dev/api/starships/36/'
),
(
    'https://swapi.dev/api/starships/37/'
),
(
    'https://swapi.dev/api/starships/38/'
),
(
    'https://swapi.dev/api/starships/39/'
),
(
    'https://swapi.dev/api/starships/40/'
);

CREATE TABLE FILMS_STARSHIPS (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    FILM_EPISODE_ID INT,
    STARSHIP_ID INT,
    FOREIGN KEY (FILM_EPISODE_ID) REFERENCES FILMS(EPISODE_ID) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (STARSHIP_ID) REFERENCES STARSHIPS(ID) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO FILMS_STARSHIPS (
    FILM_EPISODE_ID,
    STARSHIP_ID
) VALUES (
    4,
    5
),
(
    4,
    9
),
(
    5,
    10
),
(
    5,
    11
),
(
    5,
    12
),
(
    5,
    13
),
(
    5,
    15
),
(
    6,
    21
),
(
    6,
    27
),
(
    6,
    28
),
(
    6,
    29
),
(
    1,
    21
),
(
    2,
    21
),
(
    3,
    21
);

CREATE TABLE VEHICLES (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    VEHICLE_URL VARCHAR(255)
);

INSERT INTO VEHICLES (
    VEHICLE_URL
) VALUES (
    'https://swapi.dev/api/vehicles/1/'
),
(
    'https://swapi.dev/api/vehicles/2/'
),
(
    'https://swapi.dev/api/vehicles/3/'
),
(
    'https://swapi.dev/api/vehicles/4/'
),
(
    'https://swapi.dev/api/vehicles/5/'
),
(
    'https://swapi.dev/api/vehicles/6/'
),
(
    'https://swapi.dev/api/vehicles/7/'
),
(
    'https://swapi.dev/api/vehicles/8/'
),
(
    'https://swapi.dev/api/vehicles/9/'
),
(
    'https://swapi.dev/api/vehicles/10/'
),
(
    'https://swapi.dev/api/vehicles/11/'
),
(
    'https://swapi.dev/api/vehicles/12/'
),
(
    'https://swapi.dev/api/vehicles/13/'
),
(
    'https://swapi.dev/api/vehicles/14/'
),
(
    'https://swapi.dev/api/vehicles/15/'
),
(
    'https://swapi.dev/api/vehicles/16/'
),
(
    'https://swapi.dev/api/vehicles/17/'
),
(
    'https://swapi.dev/api/vehicles/18/'
),
(
    'https://swapi.dev/api/vehicles/19/'
),
(
    'https://swapi.dev/api/vehicles/20/'
),
(
    'https://swapi.dev/api/vehicles/21/'
),
(
    'https://swapi.dev/api/vehicles/22/'
),
(
    'https://swapi.dev/api/vehicles/23/'
),
(
    'https://swapi.dev/api/vehicles/24/'
),
(
    'https://swapi.dev/api/vehicles/25/'
),
(
    'https://swapi.dev/api/vehicles/26/'
),
(
    'https://swapi.dev/api/vehicles/27/'
),
(
    'https://swapi.dev/api/vehicles/28/'
),
(
    'https://swapi.dev/api/vehicles/29/'
),
(
    'https://swapi.dev/api/vehicles/30/'
),
(
    'https://swapi.dev/api/vehicles/31/'
),
(
    'https://swapi.dev/api/vehicles/32/'
),
(
    'https://swapi.dev/api/vehicles/33/'
),
(
    'https://swapi.dev/api/vehicles/34/'
),
(
    'https://swapi.dev/api/vehicles/35/'
),
(
    'https://swapi.dev/api/vehicles/36/'
),
(
    'https://swapi.dev/api/vehicles/37/'
),
(
    'https://swapi.dev/api/vehicles/38/'
),
(
    'https://swapi.dev/api/vehicles/39/'
),
(
    'https://swapi.dev/api/vehicles/40/'
),
(
    'https://swapi.dev/api/vehicles/41/'
),
(
    'https://swapi.dev/api/vehicles/42/'
),
(
    'https://swapi.dev/api/vehicles/43/'
),
(
    'https://swapi.dev/api/vehicles/44/'
),
(
    'https://swapi.dev/api/vehicles/45/'
),
(
    'https://swapi.dev/api/vehicles/46/'
),
(
    'https://swapi.dev/api/vehicles/47/'
),
(
    'https://swapi.dev/api/vehicles/48/'
),
(
    'https://swapi.dev/api/vehicles/49/'
),
(
    'https://swapi.dev/api/vehicles/50/'
),
(
    'https://swapi.dev/api/vehicles/51/'
),
(
    'https://swapi.dev/api/vehicles/52/'
),
(
    'https://swapi.dev/api/vehicles/53/'
),
(
    'https://swapi.dev/api/vehicles/54/'
),
(
    'https://swapi.dev/api/vehicles/55/'
),
(
    'https://swapi.dev/api/vehicles/56/'
),
(
    'https://swapi.dev/api/vehicles/57/'
),
(
    'https://swapi.dev/api/vehicles/58/'
),
(
    'https://swapi.dev/api/vehicles/59/'
),
(
    'https://swapi.dev/api/vehicles/60/'
),
(
    'https://swapi.dev/api/vehicles/61/'
),
(
    'https://swapi.dev/api/vehicles/62/'
),
(
    'https://swapi.dev/api/vehicles/63/'
),
(
    'https://swapi.dev/api/vehicles/64/'
),
(
    'https://swapi.dev/api/vehicles/65/'
),
(
    'https://swapi.dev/api/vehicles/66/'
),
(
    'https://swapi.dev/api/vehicles/67/'
),
(
    'https://swapi.dev/api/vehicles/68/'
),
(
    'https://swapi.dev/api/vehicles/69/'
),
(
    'https://swapi.dev/api/vehicles/70/'
),
(
    'https://swapi.dev/api/vehicles/71/'
),
(
    'https://swapi.dev/api/vehicles/72/'
),
(
    'https://swapi.dev/api/vehicles/73/'
),
(
    'https://swapi.dev/api/vehicles/74/'
),
(
    'https://swapi.dev/api/vehicles/75/'
),
(
    'https://swapi.dev/api/vehicles/76/'
),
(
    'https://swapi.dev/api/vehicles/77/'
),
(
    'https://swapi.dev/api/vehicles/78/'
),
(
    'https://swapi.dev/api/vehicles/79/'
),
(
    'https://swapi.dev/api/vehicles/80/'
);

CREATE TABLE FILMS_VEHICLES (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    FILM_EPISODE_ID INT,
    VEHICLE_ID INT,
    FOREIGN KEY (FILM_EPISODE_ID) REFERENCES FILMS(EPISODE_ID) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (VEHICLE_ID) REFERENCES VEHICLES(ID) ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO FILMS_VEHICLES (
    FILM_EPISODE_ID,
    VEHICLE_ID
) VALUES (
    4,
    2
),
(
    4,
    3
),
(
    4,
    5
),
(
    4,
    9
),
(
    4,
    10
),
(
    4,
    11
),
(
    4,
    12
),
(
    4,
    13
),
(
    5,
    3
),
(
    5,
    10
),
(
    5,
    11
),
(
    5,
    12
),
(
    5,
    15
),
(
    5,
    17
),
(
    5,
    21
),
(
    5,
    22
),
(
    5,
    23
),
(
    6,
    2
),
(
    6,
    3
),
(
    6,
    10
),
(
    6,
    11
),
(
    6,
    12
),
(
    6,
    15
),
(
    6,
    17
),
(
    6,
    22
),
(
    6,
    23
),
(
    6,
    27
),
(
    6,
    28
),
(
    1,
    31
),
(
    1,
    32
),
(
    1,
    39
),
(
    1,
    40
),
(
    1,
    41
),
(
    2,
    21
),
(
    2,
    32
),
(
    2,
    39
),
(
    2,
    43
),
(
    2,
    47
),
(
    2,
    48
),
(
    2,
    49
),
(
    2,
    52
),
(
    2,
    58
),
(
    3,
    2
),
(
    3,
    32
),
(
    3,
    48
),
(
    3,
    59
),
(
    3,
    61
),
(
    3,
    63
),
(
    3,
    64
),
(
    3,
    65
),
(
    3,
    66
),
(
    3,
    68
),
(
    3,
    74
),
(
    3,
    75
);

CREATE TABLE SPECIES (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    SPECIES_URL VARCHAR(255)
);

INSERT INTO SPECIES (
    SPECIES_URL
) VALUES (
    'https://swapi.dev/api/species/1/'
),
(
    'https://swapi.dev/api/species/2/'
),
(
    'https://swapi.dev/api/species/3/'
),
(
    'https://swapi.dev/api/species/4/'
),
(
    'https://swapi.dev/api/species/5/'
),
(
    'https://swapi.dev/api/species/6/'
),
(
    'https://swapi.dev/api/species/7/'
),
(
    'https://swapi.dev/api/species/8/'
),
(
    'https://swapi.dev/api/species/9/'
),
(
    'https://swapi.dev/api/species/10/'
),
(
    'https://swapi.dev/api/species/11/'
),
(
    'https://swapi.dev/api/species/12/'
),
(
    'https://swapi.dev/api/species/13/'
),
(
    'https://swapi.dev/api/species/14/'
),
(
    'https://swapi.dev/api/species/15/'
),
(
    'https://swapi.dev/api/species/16/'
),
(
    'https://swapi.dev/api/species/17/'
),
(
    'https://swapi.dev/api/species/18/'
),
(
    'https://swapi.dev/api/species/19/'
),
(
    'https://swapi.dev/api/species/20/'
),
(
    'https://swapi.dev/api/species/21/'
),
(
    'https://swapi.dev/api/species/22/'
),
(
    'https://swapi.dev/api/species/23/'
),
(
    'https://swapi.dev/api/species/24/'
),
(
    'https://swapi.dev/api/species/25/'
),
(
    'https://swapi.dev/api/species/26/'
),
(
    'https://swapi.dev/api/species/27/'
),
(
    'https://swapi.dev/api/species/28/'
),
(
    'https://swapi.dev/api/species/29/'
),
(
    'https://swapi.dev/api/species/30/'
),
(
    'https://swapi.dev/api/species/31/'
),
(
    'https://swapi.dev/api/species/32/'
),
(
    'https://swapi.dev/api/species/33/'
),
(
    'https://swapi.dev/api/species/34/'
),
(
    'https://swapi.dev/api/species/35/'
),
(
    'https://swapi.dev/api/species/36/'
),
(
    'https://swapi.dev/api/species/37/'
),
(
    'https://swapi.dev/api/species/38/'
),
(
    'https://swapi.dev/api/species/39/'
),
(
    'https://swapi.dev/api/species/40/'
);

CREATE TABLE FILMS_SPECIES (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    FILM_EPISODE_ID INT,
    SPECIES_ID INT,
    FOREIGN KEY (FILM_EPISODE_ID) REFERENCES FILMS(EPISODE_ID) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (SPECIES_ID) REFERENCES SPECIES(ID) ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO FILMS_SPECIES (
    FILM_EPISODE_ID,
    SPECIES_ID
) VALUES (
    4,
    1
),
(
    4,
    2
),
(
    4,
    3
),
(
    4,
    4
),
(
    4,
    5
),
(
    5,
    1
),
(
    5,
    2
),
(
    5,
    3
),
(
    5,
    6
),
(
    5,
    7
),
(
    6,
    1
),
(
    6,
    2
),
(
    6,
    3
),
(
    6,
    5
),
(
    6,
    6
),
(
    6,
    8
),
(
    6,
    9
),
(
    6,
    10
),
(
    6,
    15
),
(
    1,
    1
),
(
    1,
    2
),
(
    1,
    6
),
(
    1,
    11
),
(
    1,
    12
),
(
    1,
    13
),
(
    1,
    14
),
(
    1,
    15
),
(
    1,
    16
),
(
    1,
    17
),
(
    1,
    18
),
(
    1,
    19
),
(
    1,
    20
),
(
    1,
    21
),
(
    1,
    22
),
(
    1,
    23
),
(
    1,
    24
),
(
    1,
    25
),
(
    1,
    26
),
(
    1,
    27
),
(
    2,
    1
),
(
    2,
    2
),
(
    2,
    6
),
(
    2,
    12
),
(
    2,
    13
),
(
    2,
    15
),
(
    2,
    28
),
(
    2,
    29
),
(
    2,
    30
),
(
    2,
    31
),
(
    2,
    32
),
(
    2,
    33
),
(
    2,
    34
),
(
    2,
    35
),
(
    3,
    1
),
(
    3,
    2
),
(
    3,
    3
),
(
    3,
    6
),
(
    3,
    15
),
(
    3,
    19
),
(
    3,
    20
),
(
    3,
    23
),
(
    3,
    24
),
(
    3,
    25
),
(
    3,
    26
),
(
    3,
    27
),
(
    3,
    28
),
(
    3,
    29
),
(
    3,
    30
),
(
    3,
    33
),
(
    3,
    34
),
(
    3,
    35
),
(
    3,
    36
),
(
    3,
    37
);

--     ID INT PRIMARY KEY AUTO_INCREMENT,
--     PLANET_URL VARCHAR(255)
-- );