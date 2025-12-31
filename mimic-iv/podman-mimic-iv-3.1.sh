podman run -it -d \
  --replace \
  --name mimic-db-31 \
  -e POSTGRES_PASSWORD=$MIMIC_POSTGRES_PASSWORD \
  -e PGDATA=/mnt/pgdata/ \
  -v $HOME/data/pg/mimiciv/3.1/pgdata/:/mnt/pgdata/ \
  -v .:/mnt/mimic-code/ \
  -p 5432:5432 \
  docker.io/postgres:15
