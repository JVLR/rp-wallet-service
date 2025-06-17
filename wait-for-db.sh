#!/bin/bash
set -e

host="$1"
shift
cmd="$@"

until pg_isready -h "$host" -p 5432 -U admin; do
  >&2 echo "Aguardando o PostgreSQL em $host..."
  sleep 2
done

>&2 echo "PostgreSQL está pronto. Iniciando a aplicação..."
exec $cmd
