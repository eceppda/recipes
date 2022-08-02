-- Deploy recipes:ingredients_view to pg
-- requires: recipe_ingredients

BEGIN;

CREATE VIEW recipes.ingredients_view AS
SELECT 
    ri.ingredient_id, 
    ri.recipe_id,
    r.name AS recipe_name,
    r.description AS recipe_description,
    i.name AS ingredient_name,
    i.description AS ingredient_description
FROM recipes.recipe_ingredients ri
JOIN recipes.recipes r ON ri.recipe_id=r.id
JOIN recipes.ingredients i ON ri.ingredient_id=i.id;

COMMIT;
