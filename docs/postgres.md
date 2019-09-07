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
- toggle result display: `\x`

## UUID

There is an UUID type in Postgre. They can be generated
using the _pgcrypto_ module and declared as such:

```SQL
CREATE TABLE contacts(
   id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
   name TEXT,
   email TEXT
);
```

See https://www.starkandwayne.com/blog/uuid-primary-keys-in-postgresql/

## Timestamps

Beware, most timestamp function are indexed onto the transaction timestamp.
For a timestamp indexed on the clock use `clock_timestamp()`.
