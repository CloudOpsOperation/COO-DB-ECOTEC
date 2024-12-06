CREATE PROCEDURE GetTreeLocationTotalPages(
    IN p_pageSize INT
)
BEGIN
    DECLARE v_totalRecords INT;

    SELECT COUNT(*) INTO v_totalRecords
    FROM TreesCorde;

    SELECT CEIL(v_totalRecords / p_pageSize) AS totalPages;
END

DROP PROCEDURE IF EXISTS GetTreeLocationTotalPages;

CALL GetTreeLocationTotalPages(10);