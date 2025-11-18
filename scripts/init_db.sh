#!/usr/bin/env bash
set -e
DB_FILE="$1"
if [ -z "$DB_FILE" ]; then
  echo "usage: $0 <db-file>"
  exit 1
fi

sqlite3 "$DB_FILE" < schema/schema.sql
sqlite3 "$DB_FILE" < data/seed.sql

echo "Created $DB_FILE with schema + seed data"
