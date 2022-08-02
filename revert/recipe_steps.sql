-- Revert recipes:recipe_steps
-- requires: appschema
BEGIN;

DROP TABLE recipes.recipe_steps;


COMMIT;