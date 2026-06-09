-- -----------------------------------------------------------------
-- Tema     : Gestion de Base de Datos
-- Curso    : Base de Datos
-- SGBD     : MySQL
-- Proyecto : Asociacion de Pitajaya Tutawayta
-- -----------------------------------------------------------------

-- -----------------------------------------------------------------
-- MYSQL
-- -----------------------------------------------------------------
-- MySQL es un sistema gestor de base de datos relacional.
-- Permite crear bases de datos, tablas, relaciones, consultas,
-- usuarios, vistas, procedimientos y otros objetos necesarios para
-- administrar informacion de manera ordenada.

-- -----------------------------------------------------------------
-- GESTION DE BASE DE DATOS
-- -----------------------------------------------------------------
-- Una base de datos es el contenedor principal donde se almacenan
-- todos los objetos del sistema.
--
-- En este proyecto, la base de datos almacenara informacion sobre:
-- socios, usuarios, clientes, productos, inventario, compras y ventas.

-- -----------------------------------------------------------------
-- CREAR BASE DE DATOS
-- -----------------------------------------------------------------
-- Sintaxis:
-- CREATE DATABASE nombre_base_datos;

CREATE DATABASE IF NOT EXISTS tabla_maestra
CHARACTER SET utf8mb4
COLLATE utf8mb4_spanish_ci;

-- -----------------------------------------------------------------
-- PONER EN USO LA BASE DE DATOS
-- -----------------------------------------------------------------
-- Sintaxis:
-- USE nombre_base_datos;

USE tabla_maestra;

-- -----------------------------------------------------------------
-- VERIFICAR BASES DE DATOS EXISTENTES
-- -----------------------------------------------------------------
-- Permite listar las bases de datos creadas en el servidor MySQL.

SHOW DATABASES;

-- -----------------------------------------------------------------
-- VERIFICAR LA BASE DE DATOS EN USO
-- -----------------------------------------------------------------
-- Permite confirmar que se esta trabajando sobre la base de datos
-- correcta antes de crear tablas o insertar informacion.

SELECT DATABASE();

-- -----------------------------------------------------------------
-- UBICACION DE ARCHIVOS FISICOS DE MYSQL
-- -----------------------------------------------------------------
-- Muestra la ruta donde MySQL almacena fisicamente los archivos
-- relacionados con las bases de datos.

SHOW VARIABLES LIKE 'datadir';

-- -----------------------------------------------------------------
-- ELIMINAR BASE DE DATOS
-- -----------------------------------------------------------------
-- Esta accion elimina por completo la base de datos y su informacion.
-- Por seguridad, se deja comentada.
--
-- Sintaxis:
-- DROP DATABASE nombre_base_datos;
--
-- Ejemplo:
-- DROP DATABASE tabla_maestra;
