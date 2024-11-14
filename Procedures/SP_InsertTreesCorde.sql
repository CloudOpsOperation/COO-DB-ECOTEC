CREATE TABLE TreesCorde (
    tree_id INT PRIMARY KEY,
    latitude DECIMAL(10, 6),
    longitude DECIMAL(10, 6)
);

CREATE PROCEDURE InsertTreesCorde(
    IN p_tree_id INT,
    IN p_latitude DECIMAL(10, 6),
    IN p_longitude DECIMAL(10, 6)
)
BEGIN
    -- Check if the tree already exists
    IF NOT EXISTS (SELECT 1 FROM TreesCorde WHERE tree_id = p_tree_id) THEN
        INSERT INTO TreesCorde (tree_id, latitude, longitude)
        VALUES (p_tree_id, p_latitude, p_longitude);
    ELSE
        SELECT 'The tree already exists.' AS ErrorMessage;
    END IF;
END;


