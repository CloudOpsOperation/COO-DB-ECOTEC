MySQL Database RepositoryEste repositorio contiene la estructura y procedimientos almacenados (SP) de una base de datos MySQL. Está organizado en dos carpetas principales: Calls_Data y Procedures.
Estructura del repositorio1. Calls_DataContiene scripts para la inserción masiva de datos en la base de datos. Estos scripts hacen llamadas a los procedimientos almacenados definidos en la carpeta Procedures para alimentar las tablas de manera estructurada y eficiente.
Archivos en esta carpeta:
CLL_InsertTree.sql - Inserta datos relacionados con árboles.
CLL_InsertTreesCorde.sql - Inserta datos de coordenadas de árboles.
2. ProceduresIncluye los procedimientos almacenados que definen las operaciones a realizar en la base de datos. Cada SP representa una acción específica, como obtener datos, calcular totales o insertar información.
Principales SP en esta carpeta:
SP_GetTreeData.sql - Recupera información general de los árboles.
SP_GetTreeDataById.sql - Obtiene datos de un árbol específico mediante su ID.
SP_GetTreeDataLocation.sql - Recupera información de la ubicación de los árboles.
SP_GetTreeDataLocationAll.sql - Obtiene la ubicación de todos los árboles.
SP_GetTreeLocationTotalPage.sql - Calcula el total de páginas necesarias para paginación basado en la cantidad de registros.
SP_GetTreeTotalPage.sql - Similar al anterior, pero aplicado a una vista general de árboles.
SP_InsertTree.sql - Inserta un nuevo árbol en la base de datos.
SP_InsertTreesCorde.sql - Inserta coordenadas de árboles en la base de datos.
SP_NewUser.sql - Crea un nuevo usuario en la base de datos.
UsoCarga de datos: Ejecutar los scripts en Calls_Data para insertar datos en la base de datos.
Ejecutar procedimientos almacenados: Llamar a los SP en Procedures según la funcionalidad requerida.
Mantenimiento: Modificar los SP en Procedures para actualizar la lógica de negocio o mejorar el rendimiento.
Ejemplo de usoPara calcular el total de páginas para la paginación de árboles en la base de datos:
CALL GetTreeLocationTotalPages(10);Esto devolverá el número total de páginas necesarias con un tamaño de página de 10 registros.
RequisitosMySQL 5.7 o superior
Cliente MySQL para ejecutar los scripts
ContribucionesSi deseas contribuir, asegúrate de seguir la estructura del repositorio y realizar pruebas antes de enviar cambios.
