-- Revert recipes:ingredients
-- requires: appschema
BEGIN;

DROP TABLE recipes.ingredients;

COMMIT;