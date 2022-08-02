-- Deploy recipes:roles to pg

BEGIN;

create role web_anon nologin;

grant usage on schema recipes to web_anon;

create role authenticator noinherit login password 'ydab2d';
grant web_anon to authenticator;

grant select on recipes.steps_view to web_anon;
grant select on recipes.ingredients_view to web_anon;
grant all on recipes.ingredients to web_anon;
grant all on recipes.recipes to web_anon;
grant all on recipes.steps to web_anon;

COMMIT;