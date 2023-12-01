
TODO

CREATE TABLE IF NOT EXISTS nyc311_complaints (
    id_NYC311 INT PRIMARY KEY,
    date DATE,
    complaint_type VARCHAR(255),
    zipcode INT,
    latitude FLOAT,
    longitude FLOAT,
    geometry GEOMETRY
);


CREATE TABLE IF NOT EXISTS tree_data (
    date DATE,
    tree_id INT PRIMARY KEY,
    status VARCHAR(255),
    zipcode INT,
    health VARCHAR(255),
    spc_common VARCHAR(255),
    latitude FLOAT,
    longitude FLOAT
);


TODO
