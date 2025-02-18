# MySQL Database Repository

Este repositorio contiene la estructura y procedimientos almacenados (SP) de una base de datos MySQL. Está organizado en dos carpetas principales: `Calls_Data` y `Procedures`.

## Estructura del repositorio

### 1. Calls_Data
Contiene scripts para la inserción masiva de datos en la base de datos. Estos scripts hacen llamadas a los procedimientos almacenados definidos en la carpeta `Procedures` para alimentar las tablas de manera estructurada y eficiente.

**Archivos en esta carpeta:**
- `CLL_InsertTree.sql` - Inserta datos relacionados con árboles.
- `CLL_InsertTreesCorde.sql` - Inserta datos de coordenadas de árboles.

### 2. Procedures
Incluye los procedimientos almacenados que definen las operaciones a realizar en la base de datos. Cada SP representa una acción específica, como obtener datos, calcular totales o insertar información.

**Principales SP en esta carpeta:**
- `SP_GetTreeData.sql` - Recupera información general de los árboles.
- `SP_GetTreeDataById.sql` - Obtiene datos de un árbol específico mediante su ID.
- `SP_GetTreeDataLocation.sql` - Recupera información de la ubicación de los árboles.
- `SP_GetTreeDataLocationAll.sql` - Obtiene la ubicación de todos los árboles.
- `SP_GetTreeLocationTotalPage.sql` - Calcula el total de páginas necesarias para paginación basado en la cantidad de registros.
- `SP_GetTreeTotalPage.sql` - Similar al anterior, pero aplicado a una vista general de árboles.
- `SP_InsertTree.sql` - Inserta un nuevo árbol en la base de datos.
- `SP_InsertTreesCorde.sql` - Inserta coordenadas de árboles en la base de datos.
- `SP_NewUser.sql` - Crea un nuevo usuario en la base de datos.

---

## Instrucciones de uso

### 1. Instalación de MySQL
Si no tienes MySQL instalado, sigue estos pasos:

#### **En Windows**
1. Descarga MySQL desde: [MySQL Community Downloads](https://dev.mysql.com/downloads/)
2. Instala MySQL Server y MySQL Workbench.
3. Durante la instalación, establece una contraseña para el usuario `root`.

#### **En Linux (Ubuntu/Debian)**
```bash
sudo apt update
sudo apt install mysql-server
sudo systemctl start mysql
sudo mysql_secure_installation

## Uso de la Base de Datos

### 2. Conectar a MySQL
Ejecuta el siguiente comando para ingresar a la consola de MySQL:
```bash
mysql -u root -p
```
Introduce la contraseña de root cuando se solicite.

o baja un interfas grafica para manejador de base de datos como azure data studio con la extencion de mysql
https://azure.microsoft.com/es-mx/products/data-studio
https://learn.microsoft.com/en-us/azure-data-studio/quickstart-mysql

### 3. Crear la Base de Datos
```sql
CREATE DATABASE COO_DB_ECOTEC;
USE COO_DB_ECOTEC;
```

### 4. Ejecutar los Procedimientos Almacenados y Tablas
Navega a la carpeta `Procedures` y crea los procedures y las tablas

### 5. Insertar Datos Masivos
Una vez que los procedimientos almacenados estén creados, navega a la carpeta `Calls_Data` y ejecuta los scripts de inserción:

```sql
SOURCE CLL_InsertTree.sql;
SOURCE CLL_InsertTreesCorde.sql;
```

### 6. Verificación de Datos
Para comprobar que los datos fueron insertados correctamente, ejecuta:

```sql
SELECT * FROM TreesCorde;
SELECT * FROM Users;
```
