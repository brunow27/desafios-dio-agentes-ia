CREATE TABLE tbl_collections (
    id INT AUTO_INCREMENT PRIMARY KEY,
    collection_set_name VARCHAR(100) NOT NULL,
    release_date DATE NOT NULL,
    total_cards_in_collection SMALLINT NOT NULL
);

CREATE TABLE ref_card_types (
    id SMALLINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) NOT NULL UNIQUE
);

CREATE TABLE ref_card_stages (
    id SMALLINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(20) NOT NULL UNIQUE
);

CREATE TABLE tbl_cards (
    id INT AUTO_INCREMENT PRIMARY KEY,

    collection_id INT NOT NULL,
    type_id SMALLINT NOT NULL,
    stage_id SMALLINT,

    hp SMALLINT,
    name VARCHAR(100) NOT NULL,
    info TEXT,
    attack VARCHAR(100),
    damage VARCHAR(20),
    weak VARCHAR(30),
    resistance VARCHAR(30),
    retreat SMALLINT,
    card_number_in_collection VARCHAR(10) NOT NULL,

    CONSTRAINT fk_cards_collection
        FOREIGN KEY (collection_id)
        REFERENCES tbl_collections(id)
        ON DELETE CASCADE,

    CONSTRAINT fk_cards_type
        FOREIGN KEY (type_id)
        REFERENCES ref_card_types(id),

    CONSTRAINT fk_cards_stage
        FOREIGN KEY (stage_id)
        REFERENCES ref_card_stages(id)
);
