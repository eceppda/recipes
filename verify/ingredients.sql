-- Verify recipes:ingredients on pg

BEGIN;

SELECT EXISTS (
   SELECT FROM pg_catalog.pg_class c
   JOIN   pg_catalog.pg_namespace n ON n.oid = c.relnamespace
   WHERE  n.nspname = 'recipes'
   AND    c.relname = 'ingredients'
   AND    c.relkind = 'r'    -- only tables
   );

ROLLBACK;