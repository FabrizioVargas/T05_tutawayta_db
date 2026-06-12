# T05_tutawayta_db

## Base de datos - Asociacion de Pitajaya Tutawayta

Este repositorio reune la documentacion, los diagramas y los scripts SQL de la base de datos para la **Asociacion de Pitajaya Tutawayta**.

La base de datos `tutawayta_db` esta pensada para organizar la informacion de socios, usuarios, clientes, productos, inventario, compras y ventas.

## Objetivo

Diseñar una base de datos relacional que ayude a consultar y mantener ordenada la informacion principal de la asociacion. Con esto se busca facilitar el control de inventario, el registro de compras y ventas, y el seguimiento de las operaciones comerciales.

## Estructura del proyecto

```text
T05_tutawayta_db/
|
|-- case/
|   |-- design_database.md
|   |-- gestion_consultas.md
|
|-- documentation/
|   |-- Base_de_datos.md
|
|-- image/
|   |-- ASOCIACION_DE_PITAJAYA_-_TUTAWAYTA_FISICO.png
|   |-- ASOCIACION_DE_PITAJAYA_-_TUTAWAYTA_LOGICO.png
|
|-- resources/
|   |-- ASOCIACION_DE_PITAJAYA_-_TUTAWAYTA_FISICO.pdf
|   |-- ASOCIACION_DE_PITAJAYA_-_TUTAWAYTA_LOGICO.pdf
|
|-- scripts/
|   |-- script_estructura.sql
|   |-- datos_maestros.sql
|   |-- datos_transaccionales.sql
|
|-- README.md
```

## Contenido principal

| Carpeta | Contenido |
| --- | --- |
| `case/` | Documentos del caso, alcance del sistema y consultas principales. |
| `documentation/` | Diccionario y documentacion tecnica de la base de datos. |
| `image/` | Imagenes del modelo logico y modelo fisico. |
| `resources/` | Archivos PDF de los diagramas de base de datos. |
| `scripts/` | Scripts SQL separados por estructura, datos maestros y datos transaccionales. |

## Scripts SQL

Los scripts estan separados para que la base de datos pueda ejecutarse de forma ordenada.

| Archivo | Descripcion |
| --- | --- |
| `scripts/script_estructura.sql` | Crea la base de datos, tablas fisicas en ingles, claves primarias, claves foraneas y relaciones. |
| `scripts/datos_maestros.sql` | Inserta datos base en `ROLE`, `PARTNER`, `USER`, `CLIENT`, `CATEGORY`, `UNIT_MEASURE` y `PRODUCT`. |
| `scripts/datos_transaccionales.sql` | Inserta datos operativos en `INVENTORY`, `PURCHASE`, `SALE` y `SALE_DETAIL`. |

### Orden de ejecucion

Ejecutar los scripts en el siguiente orden:

```sql
SOURCE scripts/script_estructura.sql;
SOURCE scripts/datos_maestros.sql;
SOURCE scripts/datos_transaccionales.sql;
```

## Modelos de base de datos

| Modelo | Archivo |
| --- | --- |
| Modelo logico | `image/ASOCIACION_DE_PITAJAYA_-_TUTAWAYTA_LOGICO.png` |
| Modelo fisico | `image/ASOCIACION_DE_PITAJAYA_-_TUTAWAYTA_FISICO.png` |
| PDF logico | `resources/ASOCIACION_DE_PITAJAYA_-_TUTAWAYTA_LOGICO.pdf` |
| PDF fisico | `resources/ASOCIACION_DE_PITAJAYA_-_TUTAWAYTA_FISICO.pdf` |

## Tecnologias utilizadas

- MySQL
- SQL
- Git
- GitHub

## Autores

- Oscar Heyton Sanchez Arias
- Vargas Avendano Fabrizio Santiago
- jorge luis vilcapuma trujillo
