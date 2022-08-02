-- Revert recipes:steps
-- requires: appschema

BEGIN;

DROP TABLE recipes.steps;

COMMIT;