# 🗄️ Sistema de Base de Datos - Tutawayta

## 📌 Descripción General

La base de datos **tutawayta_db** fue diseñada para administrar la información de la Asociación de Pitahaya Tutawayta. Permite registrar y controlar socios, clientes, productos, inventario, compras y ventas, garantizando una gestión organizada y eficiente de las operaciones realizadas.

Su principal objetivo es centralizar la información y facilitar el control de los procesos comerciales relacionados con la producción y comercialización de pitahaya.

---

## ⚙️ Base de Datos en MySQL

Para el desarrollo del proyecto se utilizó **MySQL**, un sistema de gestión de bases de datos relacional reconocido por su estabilidad, rendimiento y facilidad de administración.

### Características

- Organización de la información mediante tablas relacionadas.
- Integridad de datos mediante claves primarias y foráneas.
- Soporte para consultas y transacciones.
- Compatibilidad con múltiples tecnologías y herramientas.

---

## 📁 Archivos Físicos de la Base de Datos

MySQL almacena la información en archivos físicos administrados por el propio servidor.

Para visualizar la ubicación donde se almacenan los datos se utiliza:

```sql
SHOW VARIABLES LIKE 'datadir';
```

> **Nota:** Los archivos físicos son gestionados automáticamente por MySQL y no deben modificarse manualmente.

---

## 🟢 Creación y Gestión de la Base de Datos

### Crear Base de Datos

```sql
CREATE DATABASE IF NOT EXISTS tutawayta_db;
```

### Crear Base de Datos con Configuración Recomendada

```sql
CREATE DATABASE IF NOT EXISTS tutawayta_db
CHARACTER SET utf8mb4
COLLATE utf8mb4_spanish_ci;
```

### Seleccionar la Base de Datos

```sql
USE tutawayta_db;
```

### Mostrar Bases de Datos Existentes

```sql
SHOW DATABASES;
```

---

## 🏗️ Estructura General

La base de datos está organizada en tres grupos principales:

### 📋 Tablas Maestras

Almacenan la información principal del sistema, como socios, usuarios, clientes, productos, categorías y unidades de medida.

### 📦 Tabla de Control

Permite administrar y supervisar el stock disponible de los productos registrados.

### 💳 Tablas Transaccionales

Registran las operaciones de compra y venta realizadas dentro del sistema, manteniendo la trazabilidad de cada movimiento comercial.

---

## 🔴 Eliminación de la Base de Datos

Antes de eliminar una base de datos se recomienda verificar cuál se encuentra activa:

```sql
SELECT DATABASE();
```

Eliminar la base de datos:

```sql
DROP DATABASE tutawayta_db;
```

Verificar la eliminación:

```sql
SHOW DATABASES;
```

> **⚠️ Importante:** La eliminación de una base de datos es una acción irreversible.

---

## 🧠 Buenas Prácticas

- Utilizar nombres descriptivos para tablas y campos.
- Mantener la integridad referencial mediante claves foráneas.
- Realizar copias de seguridad periódicas.
- Verificar la base de datos activa antes de ejecutar cambios importantes.
- Utilizar `IF NOT EXISTS` para evitar errores durante la creación.
- Documentar adecuadamente la estructura de la base de datos.

---

## ✅ Conclusión

La base de datos **tutawayta_db** permite gestionar de forma organizada la información de la Asociación de Pitahaya Tutawayta. Gracias a su estructura relacional, facilita el control de productos, inventario, clientes, socios y operaciones comerciales, contribuyendo a una administración eficiente y segura de los datos.