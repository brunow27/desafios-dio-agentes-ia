CREATE VIEW vw_cards_complete AS
SELECT
    c.id,

    col.collection_set_name,
    col.release_date,
    col.total_cards_in_collection,

    ct.name AS card_type,
    cs.name AS card_stage,

    c.hp,
    c.name,
    c.info,
    c.attack,
    c.damage,
    c.weak,
    c.resistance,
    c.retreat,
    c.card_number_in_collection

FROM tbl_cards c
INNER JOIN tbl_collections col
    ON c.collection_id = col.id
INNER JOIN ref_card_types ct
    ON c.type_id = ct.id
LEFT JOIN ref_card_stages cs
    ON c.stage_id = cs.id;

SELECT
    id,
    collection_set_name,
    release_date,
    total_cards_in_collection,
    card_type,
    card_stage,
    hp,
    name,
    info,
    attack,
    damage,
    weak,
    resistance,
    retreat,
    card_number_in_collection
FROM vw_cards_complete;