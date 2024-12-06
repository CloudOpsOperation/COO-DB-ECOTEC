CREATE PROCEDURE `GetTreeDataLocation`(
    IN p_page INT,
    IN p_pageSize INT
)
BEGIN
    DECLARE v_offset INT;
    SET v_offset = (p_page - 1) * p_pageSize;

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
        ON TC.tree_id = TI.tree_id
    LIMIT v_offset, p_pageSize;
END

DROP PROCEDURE IF EXISTS GetTreeDataLocation;

CALL GetTreeDataLocation(1, 10);