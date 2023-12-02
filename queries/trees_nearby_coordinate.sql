
SELECT 
    tree_id, 
    spc_common AS species, 
    health, 
    status, 
    ST_AsText(geometry) AS geom
FROM 
    trees
WHERE 
    ST_DWithin(
        geometry,
        ST_SetSRID(ST_MakePoint(-73.96253174434912, 40.80737875669467), 4326),
        0.5 * 1609.34
    );
