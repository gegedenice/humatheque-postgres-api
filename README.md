# Humathèque AI project: Middleware PostgreSQL <=> web applications

1. Env file

Duplicate .example.env, rename .env and fill with PostgreSQL connexion url + API KEY

2. Build locally

```
docker build -t smartbiblia/humatheque-postgres-api:dev .
docker run --name humatheque-postgres-api --rm -p 8000:8000 --env-file .env smartbiblia/humatheque-postgres-api:dev
```