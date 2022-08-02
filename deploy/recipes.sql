-- Deploy recipes:recipes to pg
-- requires: appschema

BEGIN;

CREATE TABLE recipes.recipes (
    id SERIAL PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    description TEXT NOT NULL
);

COMMIT;