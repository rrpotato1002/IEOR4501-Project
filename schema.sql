-- schema.sql
CREATE TABLE IF NOT EXISTS zipcode_areas (
    zipcode INTEGER PRIMARY KEY,
    city VARCHAR,
    population INTEGER,
    area FLOAT,
    county VARCHAR,
    geometry GEOMETRY(POLYGON, 4326)
);

CREATE TABLE IF NOT EXISTS nyc311_complaints (
    id_nyc INTEGER PRIMARY KEY,
    date DATE,
    complaint_type VARCHAR,
    zipcode INTEGER,
    latitude FLOAT,
    longitude FLOAT,
    geometry GEOMETRY(POINT, 4326)
);

CREATE TABLE IF NOT EXISTS trees (
    tree_id INTEGER PRIMARY KEY,
    date DATE,
    status VARCHAR,
    zipcode INTEGER,
    health VARCHAR,
    spc_common VARCHAR,
    latitude FLOAT,
    longitude FLOAT,
    geometry GEOMETRY(POINT, 4326)
);

CREATE TABLE IF NOT EXISTS rents (
    id INTEGER PRIMARY KEY,
    zipcode INTEGER,
    state VARCHAR,
    city VARCHAR,
    metro VARCHAR,
    countyname VARCHAR,
    date DATE,
    rent FLOAT
);
