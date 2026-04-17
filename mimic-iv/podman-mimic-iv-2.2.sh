podman run -it -d \
  --replace \
  --name mimic-db-22 \
  -e POSTGRES_PASSWORD=$MIMIC_POSTGRES_PASSWORD \
  -e PGDATA=/mnt/pgdata/ \
  -v /mnt/spare/mimic-pg/mimiciv/2.2/pgdata/:/mnt/pgdata/ \
  -v .:/mnt/mimic-code/ \
  -p 5431:5432 \
  docker.io/postgres:15
