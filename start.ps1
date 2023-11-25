docker compose up -d
docker cp /mock-data.json mongodb:/

# sync the data into
docker exec -it mongodb mongoimport --db test --collection hospital --file /mock-data.json --jsonArray

npm run dev