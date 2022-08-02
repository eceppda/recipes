-- Revert recipes:ingredients_view from pg

BEGIN;

DROP VIEW IF EXISTS recipes.ingredients_view;

COMMIT;
