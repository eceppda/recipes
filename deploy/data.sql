-- Deploy recipes:data to pg
-- requires: recipe_ingredients

BEGIN;

-- XXX Add DDLs here.

INSERT INTO recipes.ingredients (id, name, description) VALUES (1, 'flour', 'fine French flour');
INSERT INTO recipes.ingredients (id, name, description) VALUES (2, 'eggs', 'free range eggs');
INSERT INTO recipes.ingredients (id, name, description) VALUES (3, 'butter', 'salted butter');
INSERT INTO recipes.ingredients (id, name, description) VALUES (4, 'water', 'filtered spring water');
INSERT INTO recipes.ingredients (id, name, description) VALUES (5, 'yeast', 'miracle yeast');


INSERT INTO recipes.steps(id, name, description) VALUES (1, 'prep', 'let the yeast soak in water');
INSERT INTO recipes.steps(id, name, description) VALUES (2, 'mix', 'mix the flour and water and butter and eggs');
INSERT INTO recipes.steps(id, name, description) VALUES (3, 'knead', 'knead the dough until it is firm');
INSERT INTO recipes.steps(id, name, description) VALUES (4, 'proof', 'let the dough rest until it doubles in size');
INSERT INTO recipes.steps(id, name, description) VALUES (5, 'preheat', 'preheat the oven to 400');
INSERT INTO recipes.steps(id, name, description) VALUES (6, 'bake', 'bake the proofed dough in the oven for 20 minutes until the outside is golden');

INSERT INTO recipes.recipes(id, name, description) VALUES (1, 'french bread', 'simple bread recipe');

INSERT INTO recipes.recipe_ingredients(recipe_id, ingredient_id) VALUES (1, 1);
INSERT INTO recipes.recipe_ingredients(recipe_id, ingredient_id) VALUES (1, 2);
INSERT INTO recipes.recipe_ingredients(recipe_id, ingredient_id) VALUES (1, 3);
INSERT INTO recipes.recipe_ingredients(recipe_id, ingredient_id) VALUES (1, 4);
INSERT INTO recipes.recipe_ingredients(recipe_id, ingredient_id) VALUES (1, 5);

INSERT INTO recipes.recipe_steps(recipe_id, step_id) VALUES (1, 1);
INSERT INTO recipes.recipe_steps(recipe_id, step_id) VALUES (1, 2);
INSERT INTO recipes.recipe_steps(recipe_id, step_id) VALUES (1, 3);
INSERT INTO recipes.recipe_steps(recipe_id, step_id) VALUES (1, 4);
INSERT INTO recipes.recipe_steps(recipe_id, step_id) VALUES (1, 5);
INSERT INTO recipes.recipe_steps(recipe_id, step_id) VALUES (1, 6);

COMMIT;
