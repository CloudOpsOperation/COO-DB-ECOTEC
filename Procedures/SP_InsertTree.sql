CREATE TABLE TreeInfo (
    tree_id INT PRIMARY KEY,
    common_name VARCHAR(50),
    scientific_name VARCHAR(100),
    trunk_diameter VARCHAR(20),
    canopy_width DECIMAL(5, 2),
    height DECIMAL(5, 2),
    age INT,
    tree_condition VARCHAR(20), 
    notes VARCHAR(255)
);

CREATE PROCEDURE InsertTree(
    IN p_tree_id INT,
    IN p_common_name VARCHAR(50),
    IN p_scientific_name VARCHAR(100),
    IN p_trunk_diameter VARCHAR(20),
    IN p_canopy_width DECIMAL(5, 2),
    IN p_height DECIMAL(5, 2),
    IN p_age INT,
    IN p_tree_condition VARCHAR(20),
    IN p_notes VARCHAR(255)
)
BEGIN
    -- Check if the tree already exists
    IF NOT EXISTS (SELECT 1 FROM TreeInfo WHERE tree_id = p_tree_id) THEN
        INSERT INTO TreeInfo (
            tree_id, common_name, scientific_name, trunk_diameter, canopy_width, height, age, tree_condition, notes
        ) VALUES (
            p_tree_id, p_common_name, p_scientific_name, p_trunk_diameter, p_canopy_width, p_height, p_age, p_tree_condition, p_notes
        );
    ELSE
        SELECT 'The tree already exists.' AS ErrorMessage;
    END IF;
END;
