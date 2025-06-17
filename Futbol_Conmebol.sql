-- BASE DE DATOS: Futbol_Conmebol

--1. Creacion de la DB

CREATE DATABASE Futbol_Conmebol;

-- 2. CREACIÓN DE TABLAS

CREATE TABLE IngresosConmebol (
    ID INT IDENTITY PRIMARY KEY,
    Equipo NVARCHAR(100),
    Pais NVARCHAR(100),
    Torneo NVARCHAR(50), -- 'Libertadores' o 'Sudamericana'
    Temporada INT
    EtapaAlcanzada NVARCHAR(50),
    Ingreso_Participacion DECIMAL (20,2),
    Bonificaciones DECIMAL (20,2),
    Total_Ingresos AS (Ingreso_Participacion + Bonificaciones)
);

--3. Insertar Datos

INSERT INTO IngresosConmebol (
ID, 
Equipo, 
Pais, 
Torneo, 
Temporada, 
EtapaAlcanzada, 
IngresoParticipacion, 
Bonificaciones
)
VALUES(
	'20', 'Boca Juniors', 'Argentina', 'Sudamericana', '2024', 'Octavos de Final', '0.9', '2.14'
);

