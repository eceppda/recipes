-- Deploy recipes:recipe_ingredients to pg
-- requires: appschema
BEGIN;

CREATE TABLE recipes.recipe_ingredients (
    recipe_id INTEGER REFERENCES recipes.recipes(id),
    ingredient_id INTEGER REFERENCES recipes.ingredients(id),
    PRIMARY KEY(recipe_id, ingredient_id)
);

COMMIT;