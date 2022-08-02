-- Revert recipes:recipes
-- requires: appschema

BEGIN;

DROP TABLE recipes.recipes;

COMMIT;