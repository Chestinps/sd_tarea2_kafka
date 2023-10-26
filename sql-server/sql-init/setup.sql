-- setup.sql

-- Crear una tabla de ejemplo
CREATE TABLE Ejemplo (
    ID INT PRIMARY KEY,
    Nombre NVARCHAR(255)
)

-- Agregar datos de ejemplo
INSERT INTO Ejemplo (ID, Nombre)
VALUES (1, 'Ejemplo 1')
