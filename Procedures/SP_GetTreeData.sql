CREATE PROCEDURE GetTreeData(
    IN p_limit INT -- Número de registros a devolver, -1 para todos
)
BEGIN
    IF p_limit = 0 THEN
        SELECT * FROM TreeInfo;
    ELSE
        SELECT * FROM TreeInfo
        LIMIT p_limit;
    END IF;
END;