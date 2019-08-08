# PostgreSQL

## Installation

Run `apt install postgresql postgresql-client` and connect 
to the database with `sudo -u postgres psql`.

## Add a new admin

- `sudo su postgres`
- `createuser -s USERNAME`
- `createdb USERNAME`

## Commands

- list tables `\d`
- list roles `\dg`

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
