CREATE PROCEDURE `GetTreeDataById`(
    IN id INT
)
BEGIN
    SELECT 
        TC.tree_ID, 
        TC.latitude, 
        TC.longitude, 
        TI.common_name, 
        TI.scientific_name,
        TI.trunk_diameter,
        TI.canopy_width,
        TI.height,
        TI.age,
        TI.tree_id
    FROM 
        TreesCorde AS TC
    INNER JOIN 
        TreeInfo AS TI 
        ON TC.tree_id = TI.tree_id
    WHERE 
        TC.tree_id = id;
END

DROP PROCEDURE IF EXISTS GetTreeDataById;

CALL GetTreeDataById(100);

