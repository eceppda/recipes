-- Deploy recipes:steps_view to pg
-- requires: recipe_steps

BEGIN;

CREATE VIEW recipes.steps_view AS
SELECT 
    rs.step_id, 
    rs.recipe_id,
    r.name AS recipe_name,
    r.description AS recipe_description,
    s.name AS step_name,
    s.description AS step_description
FROM recipes.recipe_steps rs
JOIN recipes.recipes r ON rs.recipe_id=r.id
JOIN recipes.steps s ON rs.step_id=s.id;

COMMIT;
