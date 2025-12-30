podman run -it -d \
  --replace \
  --name mimic-db \
  -e POSTGRES_PASSWORD=$MIMIC_POSTGRES_PASSWORD \
  -e PGDATA=/mnt/mimic-code/pgdata \
  -v .:/mnt/mimic-code/ \
  -p 5432:5432 \
  docker.io/postgres:15
