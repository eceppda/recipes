-- Revert recipes:steps_view from pg

BEGIN;

DROP VIEW IF EXISTS recipes.steps_view;

COMMIT;
