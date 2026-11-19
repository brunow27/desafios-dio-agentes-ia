-- =====================================
-- ref_card_types
-- =====================================

INSERT INTO ref_card_types (id, name)
VALUES
    (1, 'Grass'),
    (2, 'Fire'),
    (3, 'Water'),
    (4, 'Lightning'),
    (5, 'Psychic'),
    (6, 'Fighting'),
    (7, 'Darkness'),
    (8, 'Metal'),
    (9, 'Dragon'),
    (10, 'Colorless'),
    (11, 'Fairy');

-- =====================================
-- ref_card_stages
-- =====================================

INSERT INTO ref_card_stages (id, name)
VALUES
    (1, 'Basic'),
    (2, 'Stage 1'),
    (3, 'Stage 2'),
    (4, 'Baby'),
    (5, 'EX'),
    (6, 'GX'),
    (7, 'V'),
    (8, 'VMAX'),
    (9, 'VSTAR');

-- =====================================
-- tbl_collections
-- =====================================

INSERT INTO tbl_collections (
    id,
    collection_set_name,
    release_date,
    total_cards_in_collection
)
VALUES
    (1, 'Base Set', '1999-01-09', 102),
    (2, 'Jungle', '1999-06-16', 64),
    (3, 'Fossil', '1999-10-10', 62),
    (4, 'Team Rocket', '2000-04-24', 83),
    (5, 'Scarlet & Violet Base Set', '2023-03-31', 258);

-- =====================================
-- tbl_cards
-- =====================================

INSERT INTO tbl_cards (
    id,
    collection_id,
    type_id,
    stage_id,
    hp,
    name,
    info,
    attack,
    damage,
    weak,
    resistance,
    retreat,
    card_number_in_collection
)
VALUES

-- Base Set
(
    1,
    1,
    4,
    1,
    60,
    'Pikachu',
    'Mouse Pokémon',
    'Thunder Jolt',
    '30',
    'Fighting',
    NULL,
    1,
    '58/102'
),

(
    2,
    1,
    2,
    3,
    120,
    'Charizard',
    'Flame Pokémon',
    'Fire Spin',
    '100',
    'Water',
    NULL,
    3,
    '4/102'
),

(
    3,
    1,
    3,
    3,
    100,
    'Blastoise',
    'Shellfish Pokémon',
    'Hydro Pump',
    '40+',
    'Lightning',
    NULL,
    3,
    '2/102'
),

(
    4,
    1,
    5,
    1,
    40,
    'Mewtwo',
    'Genetic Pokémon',
    'Psychic',
    '10+',
    'Psychic',
    NULL,
    2,
    '10/102'
),

-- Jungle
(
    5,
    2,
    10,
    1,
    70,
    'Eevee',
    'Evolution Pokémon',
    'Tail Wag',
    '10',
    'Fighting',
    'Psychic',
    1,
    '51/64'
),

(
    6,
    2,
    10,
    2,
    80,
    'Jolteon',
    'Lightning Pokémon',
    'Pin Missile',
    '20x',
    'Fighting',
    NULL,
    1,
    '4/64'
),

-- Fossil
(
    7,
    3,
    5,
    1,
    50,
    'Gastly',
    'Gas Pokémon',
    'Sleeping Gas',
    '10',
    'Psychic',
    'Fighting',
    0,
    '33/62'
),

(
    8,
    3,
    3,
    2,
    80,
    'Lapras',
    'Transport Pokémon',
    'Water Gun',
    '10+',
    'Lightning',
    NULL,
    2,
    '10/62'
),

-- Team Rocket
(
    9,
    4,
    7,
    2,
    60,
    'Dark Charmeleon',
    'Flame Pokémon',
    'Tail Slap',
    '20',
    'Water',
    NULL,
    2,
    '32/82'
),

(
    10,
    4,
    7,
    1,
    50,
    'Dark Squirtle',
    'Tiny Turtle Pokémon',
    'Shell Attack',
    '20',
    'Lightning',
    NULL,
    1,
    '46/82'
),

-- Scarlet & Violet
(
    11,
    5,
    2,
    7,
    220,
    'Arcanine ex',
    'Legendary Pokémon',
    'Burning Road',
    '250',
    'Water',
    NULL,
    2,
    '032/198'
),

(
    12,
    5,
    5,
    7,
    210,
    'Gardevoir ex',
    'Embrace Pokémon',
    'Miracle Force',
    '190',
    'Metal',
    NULL,
    2,
    '086/198'
),

(
    13,
    5,
    3,
    1,
    70,
    'Quaxly',
    'Duckling Pokémon',
    'Water Splash',
    '20',
    'Lightning',
    NULL,
    1,
    '052/198'
),

(
    14,
    5,
    10,
    1,
    60,
    'Lechonk',
    'Hog Pokémon',
    'Ram',
    '20',
    'Fighting',
    NULL,
    1,
    '155/198'
);