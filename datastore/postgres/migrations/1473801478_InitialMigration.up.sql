CREATE TABLE projects (
    id serial PRIMARY KEY,
    keys text[]
);

CREATE TABLE documents (
    id serial PRIMARY KEY,
    locale varchar(128) NOT NULL CHECK (locale <> ''),
    pairs hstore,
    project_id integer REFERENCES projects (id) ON DELETE CASCADE
);