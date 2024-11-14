DROP PROCEDURE IF EXISTS CreateUserAndGrantPermissions;

CREATE PROCEDURE CreateUserAndGrantPermissions(
    IN p_UserName VARCHAR(128),
    IN p_SecurePwd VARCHAR(128),
    IN p_DatabaseName VARCHAR(128)
)
BEGIN
    -- Manejo de errores
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        SELECT 'Error: ocurrió un problema al crear el usuario o asignar permisos.' AS ErrorMessage;
    END;

    -- Crear el usuario con acceso desde cualquier IP
    SET @SQL = CONCAT('CREATE USER IF NOT EXISTS ''', p_UserName, '''@''%'' IDENTIFIED BY ''', p_SecurePwd, ''';');
    PREPARE stmt FROM @SQL;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;

    -- Asignar permisos básicos desde cualquier IP
    SET @SQL = CONCAT('GRANT SELECT, INSERT, UPDATE, DELETE ON ', p_DatabaseName, '.* TO ''', p_UserName, '''@''%'';');
    PREPARE stmt FROM @SQL;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;

    -- Permitir crear tablas desde cualquier IP
    SET @SQL = CONCAT('GRANT CREATE ON ', p_DatabaseName, '.* TO ''', p_UserName, '''@''%'';');
    PREPARE stmt FROM @SQL;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;

    -- Aplicar cambios en los permisos
    FLUSH PRIVILEGES;
END;




