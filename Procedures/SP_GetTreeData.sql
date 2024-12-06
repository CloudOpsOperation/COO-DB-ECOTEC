CREATE PROCEDURE GetTreeData(
    IN p_page INT,
    IN p_pageSize INT
)
BEGIN
    DECLARE v_offset INT;
    SET v_offset = (p_page - 1) * p_pageSize;

    SELECT *
    FROM TreeInfo
    LIMIT v_offset, p_pageSize;

END 

DROP PROCEDURE IF EXISTS GetTreeData;

CALL GetTreeData(50, 10);