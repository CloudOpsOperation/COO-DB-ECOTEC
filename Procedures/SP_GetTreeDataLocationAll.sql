CREATE PROCEDURE `GetTreeDataLocationAll`()
BEGIN
    SELECT 
        TC.tree_ID, 
        TC.latitude, 
        TC.longitude, 
        TI.common_name, 
        TI.scientific_name
    FROM 
        TreesCorde AS TC
    INNER JOIN 
        TreeInfo AS TI 
        ON TC.tree_ID = TI.tree_ID;
END

DROP PROCEDURE IF EXISTS GetTreeDataLocationAll;

CALL GetTreeDataLocationAll();