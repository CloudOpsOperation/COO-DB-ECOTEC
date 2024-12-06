CREATE PROCEDURE GetTreeTotalPages(
    IN p_pageSize INT
)
BEGIN
    DECLARE v_totalRecords INT;

    SELECT COUNT(*) INTO v_totalRecords
    FROM TreeInfo;

    SELECT CEIL(v_totalRecords / p_pageSize) AS totalPages;
END

DROP PROCEDURE IF EXISTS GetTreeTotalPages;

CALL GetTreeTotalPages(10);