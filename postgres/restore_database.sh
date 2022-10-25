POSTGRES_CONTAINER=$1
POSTGRES_DB=$2
POSTGRES_USER=$3
POSTGRES_PASSWORD=$4

docker exec -i $POSTGRES_CONTAINER /bin/bash -c "PGPASSWORD=$POSTGRES_PASSWORD psql --username $POSTGRES_USER $POSTGRES_DB" < ./dumps/dump.sql
