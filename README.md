# Postgrest Example

## To Start

`docker-compose up -d server`

Postgrest (and postgres) should now be running in container and ports exposed. Port 3000 for postgrest, and 5432 for postgres.

`docker-compose run sqitch sqitch deploy` should deploy the recipe schema and some data to postgres.

Assuming that runs without error, we will want to verify the deployment:

`docker-compose run sqitch sqitch verify` will run tests against the schema, making sure tables and views are there.

Assuming that goes as planned, we can test the API too:

`curl http://localhost:3000/steps_view` should retrieve data from the recipes api.

Now, we might want to order the results: `curl http://localhost:3000/steps_view?order=step_name`

Or, we might want to retrieve a subset of the data: `curl http://localhost:3000/steps_view?select=step_name,recipe_name`

The rest you'll find in the postgrest docs.