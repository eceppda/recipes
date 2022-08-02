-- Deploy recipes:recipe_steps to pg
-- requires: appschema
BEGIN;

CREATE TABLE recipes.recipe_steps (
    recipe_id INTEGER REFERENCES recipes.recipes(id),
    step_id INTEGER REFERENCES recipes.steps(id),
    PRIMARY KEY(recipe_id, step_id)
);

COMMIT;