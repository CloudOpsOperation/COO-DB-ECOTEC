CALL InsertTree(
    1, -- Tree ID
    'Encino', -- Common Name
    'Quercus', -- Scientific Name
    5, -- Trunk Diameter (pulgadas)
    6, -- Canopy Width (m)
    6, -- Height (m)
    10, -- Age (years)
    'Buenas', -- Tree Condition
    NULL -- Notes
);

CALL InsertTree( 2, 'Canelo', 'Drimys', 12, 10, 9, 5, 'Buenas', NULL); 
CALL InsertTree(3, 'Anacahuita', 'Cordia boissieri', 8, 6, 6, 4, 'Buenas', NULL);
CALL InsertTree(4, 'Anacua', 'Ehretia anacua', 6, 6, 8, 6, 'Buenas', NULL);
CALL InsertTree(5, 'Encino Rojo', 'Quercus texana', 5, 8, 7, 9, 'Buenas', NULL);
CALL InsertTree(6, 'Encino Roble', 'Quercus polymorpha', 4, 7, 6, 8, 'Buenas', NULL);
CALL InsertTree(7, 'Encino', 'Quercus', 4, 4, 6, 8, 'Buenas', NULL);
CALL InsertTree(8, 'Encino', 'Quercus', 5, 6, 5, 8, 'Buenas', NULL);
CALL InsertTree(9, 'Encino', 'Quercus', 6, 5, 4, 8, 'Buenas', NULL);
CALL InsertTree(10, 'Encino', 'Quercus', 8, 4, 3, 8, 'Buenas', NULL);

SELECT * FROM TreeInfo;