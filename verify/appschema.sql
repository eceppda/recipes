-- Verify recipes:appschema on pg

BEGIN;

SELECT schema_name FROM information_schema.schemata WHERE schema_name = 'recipes';

ROLLBACK;