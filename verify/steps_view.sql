-- Verify recipes:steps_view on pg

BEGIN;

SELECT EXISTS (
   SELECT FROM pg_catalog.pg_class c
   JOIN   pg_catalog.pg_namespace n ON n.oid = c.relnamespace
   WHERE  n.nspname = 'recipes'
   AND    c.relname = 'steps_view'
   AND    c.relkind = 'v'    -- only views
   );

ROLLBACK;
