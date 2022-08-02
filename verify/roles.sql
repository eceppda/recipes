-- Verify recipes:roles on pg

BEGIN;

SELECT 1 FROM pg_roles WHERE rolname='web_anon';

ROLLBACK;
