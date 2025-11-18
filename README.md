# SQL-Practice-REPO
This repository provides a progressive set of SQL exercises using SQLite.


## Quick start


```bash
# create and seed SQLite database
bash scripts/init_db.sh practice.db


# open sqlite
sqlite3 practice.db


# run an exercise solution (example)
sqlite3 practice.db < solutions/01_basic_select.sql
