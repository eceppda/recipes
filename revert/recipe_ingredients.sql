-- Revert recipes:recipe_ingredients
-- requires: appschema
BEGIN;

DROP TABLE recipes.recipe_ingredients;

COMMIT;