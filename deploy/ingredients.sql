-- Deploy recipes:ingredients to pg
-- requires: appschema
BEGIN;

CREATE TABLE recipes.ingredients (
    id SERIAL PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    description TEXT NOT NULL
);

COMMIT;