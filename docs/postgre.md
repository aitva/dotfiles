# PostgreSQL

## Installation

Run `apt install postgresql postgresql-client` and connect 
to the database with `sudo -u postgres psql`.

## Add a new admin

- `sudo su postgres`
- `createuser -s USERNAME`
- `createdb USERNAME`

## Commands

- list roles: `\du`
- list databases: `\l`
- change database: `\c`
- list tables: `\dt`
