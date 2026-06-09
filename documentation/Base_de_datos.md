# 🗄️ Sistema de Base de Datos - Tabla Maestra

## 📌 Descripción General

La base de datos **tabla_maestra** fue creada para almacenar y organizar toda la información del sistema. En ella se gestionan los usuarios, clientes, productos, inventario, compras y ventas, permitiendo mantener un control adecuado de cada operación realizada.

Su objetivo es centralizar la información y facilitar su administración mediante tablas relacionadas entre sí.

---

## ⚙️ Base de Datos en MySQL

Para el desarrollo del proyecto se utilizó **MySQL**, un sistema de gestión de bases de datos relacional ampliamente utilizado por su facilidad de uso, rendimiento y compatibilidad con diferentes tecnologías.

### Características

- Organización de datos mediante tablas.
- Soporte para relaciones entre entidades.
- Seguridad e integridad de la información.
- Amplia documentación y comunidad.

---

## 📁 Archivos Físicos de la Base de Datos

MySQL almacena la información en archivos físicos dentro del servidor.

Para visualizar la ubicación de estos archivos se utiliza:

```sql
SHOW VARIABLES LIKE 'datadir';
```

> **Nota:** Los archivos físicos son administrados automáticamente por MySQL y no deben modificarse manualmente.

---

## 🟢 Creación y Gestión de la Base de Datos

### Crear Base de Datos

```sql
CREATE DATABASE IF NOT EXISTS tabla_maestra;
```

### Crear Base de Datos con Configuración Recomendada

```sql
CREATE DATABASE IF NOT EXISTS tabla_maestra
CHARACTER SET utf8mb4
COLLATE utf8mb4_spanish_ci;
```

### Poner en Uso la Base de Datos

```sql
USE tabla_maestra;
```

### Listar las Bases de Datos Existentes

```sql
SHOW DATABASES;
```

---

## 🏗️ Estructura de la Base de Datos

La base de datos está compuesta por las siguientes tablas:

### 📋 Tablas Maestras

| Tabla | Descripción |
|--------|-------------|
| rol | Almacena los roles del sistema |
| socio | Información de socios o trabajadores |
| usuario | Datos de acceso al sistema |
| cliente | Información de clientes |
| categoria | Clasificación de productos |
| unidad_medida | Unidades de medida de los productos |
| producto | Información de los productos |

### 📦 Tabla de Control

| Tabla | Descripción |
|--------|-------------|
| inventario | Control del stock disponible |

### 💳 Tablas Transaccionales

| Tabla | Descripción |
|--------|-------------|
| compra | Registro de compras realizadas |
| venta | Registro de ventas realizadas |
| detalle_venta | Detalle de productos vendidos |

---

## 🔴 Eliminación de la Base de Datos

Antes de eliminar una base de datos se recomienda verificar cuál se encuentra activa:

```sql
SELECT DATABASE();
```

Eliminar la base de datos:

```sql
DROP DATABASE tabla_maestra;
```

Verificar la eliminación:

```sql
SHOW DATABASES;
```

> ⚠️ **Importante:** La eliminación de una base de datos es una acción irreversible.

---

## 🧠 Buenas Prácticas

- Utilizar nombres descriptivos para tablas y campos.
- Realizar copias de seguridad periódicas.
- Mantener relaciones mediante claves primarias y foráneas.
- Verificar la base de datos activa antes de ejecutar cambios importantes.
- Utilizar `IF NOT EXISTS` para evitar errores durante la creación.

---

## ✅ Conclusión

La base de datos **tabla_maestra** permite administrar de forma organizada la información del sistema. Gracias a la relación entre sus tablas, se facilita el control de usuarios, clientes, productos, inventario, compras y ventas, garantizando una mejor gestión de los datos.