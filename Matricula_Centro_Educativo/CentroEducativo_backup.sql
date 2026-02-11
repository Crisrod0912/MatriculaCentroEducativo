-- Crear la base de datos.
IF DB_ID('CentroEducativo') IS NULL
BEGIN
	CREATE DATABASE CentroEducativo;
END
GO

-- Utilizar la base de datos.
USE CentroEducativo;
GO

-- =============================================
-- TABLAS
-- =============================================

-- Tabla de Estudiante.
BEGIN 
    CREATE TABLE dbo.Estudiante (
        ID_Estudiante      INT          PRIMARY KEY NOT NULL,
        ID_DatosPersonales INT          NOT NULL,
        Apellido           NVARCHAR(30) NOT NULL,
        Fecha_Nacimiento   Date         NOT NULL,
        Genero             NVARCHAR(30) NOT NULL,
        Annio_Ingreso      INT          NOT NULL,
        Nombre             NVARCHAR(30) NOT NULL,
    );

    -- Inserción de 50 datos en la tabla Estudiante.
    INSERT INTO dbo.Estudiante (ID_Estudiante, ID_DatosPersonales, Apellido, Fecha_Nacimiento, Genero, Annio_Ingreso, Nombre) VALUES
    (1, 1, 'Rodríguez', '2004-09-12', 'Hombre', 2023, 'Cristopher'),
    (2, 2, 'Segura', '2006-02-13', 'Mujer', 2023, 'Paola'),   
    (3, 3, 'Rodríguez', '2000-03-25', 'Masculino', 2019, 'Carlos'),
    (4, 4, 'López', '2000-04-10', 'Femenino', 2020, 'Laura'),
    (5, 5, 'Gómez', '2000-05-05', 'Masculino', 2018, 'Ana'),
    (6, 6, 'Fernández', '2000-06-30', 'Femenino', 2022, 'David'),
    (7, 7, 'Pérez', '2000-07-20', 'Masculino', 2021, 'Elena'),
    (8, 8, 'Sánchez', '2000-08-10', 'Femenino', 2020, 'Alejandro'),
    (9, 9, 'Díaz', '2000-09-05', 'Masculino', 2019, 'Sofía'),
    (10,10, 'Martín', '2000-10-25', 'Femenino', 2022, 'Javier'),
    (11, 11, 'Hernández', '2000-11-15', 'Masculino', 2021, 'Paula'),
    (12, 12, 'García', '2000-12-20', 'Femenino', 2020, 'Miguel'),
    (13, 13, 'Muñoz', '2001-01-30', 'Masculino', 2018, 'Lucía'),
    (14, 14, 'Álvarez', '2001-02-05', 'Femenino', 2022, 'Diego'),
    (15, 15, 'Romero', '2001-03-10', 'Masculino', 2021, 'Carmen'),
    (16, 16, 'Suárez', '2001-04-25', 'Femenino', 2020, 'Manuel'),
    (17, 17, 'Torres', '2001-05-20', 'Masculino', 2019, 'Isabel'),
    (18, 18, 'Domínguez', '2001-06-15', 'Femenino', 2022, 'Fernando'),
    (19, 19, 'Vázquez', '2001-07-30', 'Masculino', 2021, 'Eva'),
    (20, 20, 'Ramos', '2001-08-05', 'Femenino', 2020, 'Daniel'),
    (21, 21, 'Cruz', '2001-09-10', 'Masculino', 2018, 'Luisa'),
    (22, 22, 'Iglesias', '2001-10-20', 'Femenino', 2022, 'Roberto'),
    (23, 23, 'Ortega', '2001-11-25', 'Masculino', 2021, 'Raquel'),
    (24, 24, 'Reyes', '2001-12-30', 'Femenino', 2020, 'Jorge'),
    (25, 25, 'Jiménez', '2002-01-15', 'Masculino', 2019, 'Patricia'),
    (26, 26, 'Luna', '2002-02-20', 'Femenino', 2022, 'Pedro'),
    (27, 27, 'Molina', '2002-03-25', 'Masculino', 2021, 'Natalia'),
    (28, 28, 'Giménez', '2002-04-10', 'Femenino', 2020, 'Óscar'),
    (29, 29, 'Santos', '2002-05-05', 'Masculino', 2018, 'Angela'),
    (30, 30, 'Castillo', '2002-06-30', 'Femenino', 2022, 'Alberto'),
    (31, 31, 'Ortiz', '2002-07-20', 'Masculino', 2021, 'Teresa'),
    (32, 32, 'Núñez', '2002-08-10', 'Femenino', 2020, 'Rubén'),
    (33, 33, 'Serrano', '2002-09-05', 'Masculino', 2019, 'Victoria'),
    (34, 34, 'Vidal', '2002-10-25', 'Femenino', 2022, 'Santiago'),
    (35, 35, 'Carmona', '2002-11-15', 'Masculino', 2021, 'Marina'),
    (36, 36, 'Pastor', '2002-12-20', 'Femenino', 2020, 'Gabriel'),
    (37, 37, 'Calvo', '2003-01-30', 'Masculino', 2018, 'Cristina'),
    (38, 38, 'Herrera', '2003-02-05', 'Femenino', 2022, 'Joaquín'),
    (39, 39, 'Aguilar', '2003-03-10', 'Masculino', 2021, 'Marta'),
    (40, 40, 'Medina', '2003-04-25', 'Femenino', 2020, 'Adrián'),
    (41, 41, 'Peña', '2003-05-20', 'Masculino', 2019, 'Carmen'),
    (42, 42, 'Cabrera', '2003-06-15', 'Femenino', 2022, 'Francisco'),
    (43, 43, 'Gallardo', '2003-07-30', 'Masculino', 2021, 'Elena'),
    (44, 44, 'Vega', '2003-08-05', 'Femenino', 2020, 'Rafaela'),
    (45, 45, 'Campos', '2003-09-10', 'Masculino', 2018, 'Emilio'),
    (46, 46, 'Carrasco', '2003-10-20', 'Femenino', 2022, 'Roberto'),
    (47, 47, 'Cano', '2003-11-25', 'Masculino', 2021, 'Carolina'),
    (48, 48, 'Prieto', '2003-12-30', 'Femenino', 2020, 'Javier'),
    (49, 49, 'Varela', '2004-01-15', 'Masculino', 2019, 'Nerea'),
    (50, 50, 'Arias', '2004-02-20', 'Femenino', 2022, 'Sergio');
END
GO

-- Tabla de Datos Personales.
BEGIN
    CREATE TABLE dbo.DatosPersonales (
        ID_DatosPersonales INT           PRIMARY KEY NOT NULL,
        ID_Estudiante      INT           NOT NULL,
        Direccion          NVARCHAR(500) NOT NULL,
        Correo             NVARCHAR(150) NOT NULL,
        FOREIGN KEY (ID_Estudiante) REFERENCES dbo.Estudiante(ID_Estudiante)
    );

    -- Inserción de 50 datos en la tabla Datos Personales.
    INSERT INTO dbo.DatosPersonales (ID_DatosPersonales, ID_Estudiante, Direccion, Correo) VALUES
    (1, 1, 'Calle 123', 'correo1@example.com'),
    (2, 2, 'Avenida 456', 'correo2@example.com'),
    (3, 3, 'Plaza Principal', 'correo3@example.com'),
    (4, 4, 'Carrera 789', 'correo4@example.com'),
    (5, 5, 'Callejón 20', 'correo5@example.com'),
    (6, 6, 'Paseo del Sol', 'correo6@example.com'),
    (7, 7, 'Avenida Central', 'correo7@example.com'),
    (8, 8, 'Calle de la Luna', 'correo8@example.com'),
    (9, 9, 'Calle 33', 'correo9@example.com'),
    (10, 10, 'Avenida 22', 'correo10@example.com'),
    (11, 11, 'Plaza de la Libertad', 'correo11@example.com'),
    (12, 12, 'Callejón 20', 'correo12@example.com'),
    (13, 13, 'Paseo del Parque', 'correo13@example.com'),
    (14, 14, 'Avenida de las Flores', 'correo14@example.com'),
    (15, 15, 'Calle del Puente', 'correo15@example.com'),
    (16, 16, 'Callejón de los Gatos', 'correo16@example.com'),
    (17, 17, 'Avenida del Río', 'correo17@example.com'),
    (18, 18, 'Calle de los Pájaros', 'correo18@example.com'),
    (19, 19, 'Callejon 20', 'correo19@example.com'),
    (20, 20, 'Avenida 21', 'correo20@example.com'),
    (21, 21, 'Plaza Mayor', 'correo21@example.com'),
    (22, 22, 'Calle del Bosque', 'correo22@example.com'),
    (23, 23, 'Calle del Mar', 'correo23@example.com'),
    (24, 24, 'Avenida de las Palmeras', 'correo24@example.com'),
    (25, 25, 'Calle de la Montaña', 'correo25@example.com'),
    (26, 26, 'Avenida del Cielo', 'correo26@example.com'),
    (27, 27, 'Calle de las Estrellas', 'correo27@example.com'),
    (28, 28, 'Calle de las Sombras', 'correo28@example.com'),
    (29, 29, 'Callejon de la Noche', 'correo29@example.com'),
    (30, 30, 'Avenida del Crepúsculo', 'correo30@example.com'),
    (31, 31, 'Calle de los Suspiros', 'correo31@example.com'),
    (32, 32, 'Avenida de los Sueños', 'correo32@example.com'),
    (33, 33, 'Plaza del Recuerdo', 'correo33@example.com'),
    (34, 34, 'Calle de las Ilusiones', 'correo34@example.com'),
    (35, 35, 'Callejon de los Recuerdos', 'correo35@example.com'),
    (36, 36, 'Avenida del Olvido', 'correo36@example.com'),
    (37, 37, 'Plaza de los Secretos', 'correo37@example.com'),
    (38, 38, 'Calle de los Misterios', 'correo38@example.com'),
    (39, 39, 'Avenida del Silencio', 'correo39@example.com'),
    (40, 40, 'Calle de la Soledad', 'correo40@example.com'),
    (41, 41, 'Callejón de los Deseos', 'correo41@example.com'),
    (42, 42, 'Avenida de los Recuerdos', 'correo42@example.com'),
    (43, 43, 'Plaza de las Maravillas', 'correo43@example.com'),
    (44, 44, 'Calle del Destino', 'correo44@example.com'),
    (45, 45, 'Calle de las Emociones', 'correo45@example.com'),
    (46, 46, 'Avenida de los Sentimientos', 'correo46@example.com'),
    (47, 47, 'Calle de la Felicidad', 'correo47@example.com'),
    (48, 48, 'Callejón de los Sueños', 'correo48@example.com'),
    (49, 49, 'Plaza de la Imaginación', 'correo49@example.com'),
    (50, 50, 'Avenida de la Fantasía', 'correo50@example.com');
END
GO

-- Tabla de Congelamiento.
BEGIN
    CREATE TABLE dbo.Congelamiento (
        ID_Congelamiento INT PRIMARY KEY NOT NULL,
        ID_Fecha         INT NOT NULL,
        ID_Motivo        INT NOT NULL,
        Activo           BIT NOT NULL,
    );

    -- Inserción de 50 datos en la tabla Congelamiento.
    INSERT INTO dbo.Congelamiento (ID_Congelamiento, ID_Fecha, ID_Motivo, Activo) VALUES
    (1, 101, 201, 1),
    (2, 102, 202, 0),
    (3, 103, 203, 1),
    (4, 104, 204, 0),
    (5, 105, 205, 1),
    (6, 106, 206, 0),
    (7, 107, 207, 1),
    (8, 108, 208, 0),
    (9, 109, 209, 1),
    (10, 110, 210, 0),
    (11, 111, 211, 1),
    (12, 112, 212, 0),
    (13, 113, 213, 1),
    (14, 114, 214, 0),
    (15, 115, 215, 1),
    (16, 116, 216, 0),
    (17, 117, 217, 1),
    (18, 118, 218, 0),
    (19, 119, 219, 1),
    (20, 120, 220, 0),
    (21, 121, 221, 1),
    (22, 122, 222, 0),
    (23, 123, 223, 1),
    (24, 124, 224, 0),
    (25, 125, 225, 1),
    (26, 126, 226, 0),
    (27, 127, 227, 1),
    (28, 128, 228, 0),
    (29, 129, 229, 1),
    (30, 130, 230, 0),
    (31, 131, 231, 1),
    (32, 132, 232, 0),
    (33, 133, 233, 1),
    (34, 134, 234, 0),
    (35, 135, 235, 1),
    (36, 136, 236, 0),
    (37, 137, 237, 1),
    (38, 138, 238, 0),
    (39, 139, 239, 1),
    (40, 140, 240, 0),
    (41, 141, 241, 1),
    (42, 142, 242, 0),
    (43, 143, 243, 1),
    (44, 144, 244, 0),
    (45, 145, 245, 1),
    (46, 146, 246, 0),
    (47, 147, 247, 1),
    (48, 148, 248, 0),
    (49, 149, 249, 1),
    (50, 150, 250, 0);
END
GO

-- Tabla de Fecha.
BEGIN
    CREATE TABLE dbo.Fecha (
        ID_Fecha         INT  PRIMARY KEY NOT NULL,
        ID_Congelamiento INT  NOT NULL,
        Fecha_Inicio     DATE NOT NULL,
        Fecha_Fin        DATE NULL,
        FOREIGN KEY (ID_Congelamiento) REFERENCES dbo.Congelamiento(ID_Congelamiento)
    );

    -- Inserción de 50 datos en la tabla Fecha.
    INSERT INTO dbo.Fecha (ID_Fecha, ID_Congelamiento, Fecha_Inicio, Fecha_Fin) VALUES
    (101, 1, '2023-01-01', '2023-01-10'),
    (102, 2, '2023-02-01', '2023-02-10'),
    (103, 3, '2023-03-01', '2023-03-10'),
    (104, 4, '2023-04-01', '2023-04-10'),
    (105, 5, '2023-05-01', '2023-05-10'),
    (106, 6, '2023-06-01', '2023-06-10'),
    (107, 7, '2023-07-01', '2023-07-10'),
    (108, 8, '2023-08-01', '2023-08-10'),
    (109, 9, '2023-09-01', '2023-09-10'),
    (110, 10, '2023-10-01', '2023-10-10'),
    (111, 11, '2023-11-01', '2023-11-10'),
    (112, 12, '2023-12-01', '2023-12-10'),
    (113, 13, '2024-01-01', '2024-01-10'),
    (114, 14, '2024-02-01', '2024-02-10'),
    (115, 15, '2024-03-01', '2024-03-10'),
    (116, 16, '2024-04-01', '2024-04-10'),
    (117, 17, '2024-05-01', '2024-05-10'),
    (118, 18, '2024-06-01', '2024-06-10'),
    (119, 19, '2024-07-01', '2024-07-10'),
    (120, 20, '2024-08-01', '2024-08-10'),
    (121, 21, '2024-09-01', '2024-09-10'),
    (122, 22, '2024-10-01', '2024-10-10'),
    (123, 23, '2024-11-01', '2024-11-10'),
    (124, 24, '2024-12-01', '2024-12-10'),
    (125, 25, '2025-01-01', '2025-01-10'),
    (126, 26, '2025-02-01', '2025-02-10'),
    (127, 27, '2025-03-01', '2025-03-10'),
    (128, 28, '2025-04-01', '2025-04-10'),
    (129, 29, '2025-05-01', '2025-05-10'),
    (130, 30, '2025-06-01', '2025-06-10'),
    (131, 31, '2025-07-01', '2025-07-10'),
    (132, 32, '2025-08-01', '2025-08-10'),
    (133, 33, '2025-09-01', '2025-09-10'),
    (134, 34, '2025-10-01', '2025-10-10'),
    (135, 35, '2025-11-01', '2025-11-10'),
    (136, 36, '2025-12-01', '2025-12-10'),
    (137, 37, '2026-01-01', '2026-01-10'),
    (138, 38, '2026-02-01', '2026-02-10'),
    (139, 39, '2026-03-01', '2026-03-10'),
    (140, 40, '2026-04-01', '2026-04-10'),
    (141, 41, '2026-05-01', '2026-05-10'),
    (142, 42, '2026-06-01', '2026-06-10'),
    (143, 43, '2026-07-01', '2026-07-10'),
    (144, 44, '2026-08-01', '2026-08-10'),
    (145, 45, '2026-09-01', '2026-09-10'),
    (146, 46, '2026-10-01', '2026-10-10'),
    (147, 47, '2026-11-01', '2026-11-10'),
    (148, 48, '2026-12-01', '2026-12-10'),
    (149, 49, '2027-01-01', '2027-01-10'),
    (150, 50, '2027-02-01', '2027-02-10');
END
GO

-- Tabla de Motivo.
BEGIN
    CREATE TABLE dbo.Motivo (
        ID_Motivo        INT           PRIMARY KEY NOT NULL,
        ID_Congelamiento INT           NOT NULL,
        Salud            BIT           NULL,
        Laboral          BIT           NULL,
        Otros            NVARCHAR(150) NULL,
        FOREIGN KEY (ID_Congelamiento) REFERENCES dbo.Congelamiento(ID_Congelamiento)
    );

    -- Inserción de 50 datos en la tabla Motivo.
    INSERT INTO dbo.Motivo (ID_Motivo, ID_Congelamiento, Salud, Laboral, Otros) VALUES
    (201, 1, 0, 1, NULL),
    (202, 2, 0, 0, 'Proyecto Especial'),
    (203, 3, 1, 0, 'Enfermedad'),
    (204, 4, 0, 1, 'Capacitación'),
    (205, 5, 1, 0, NULL),
    (206, 6, 0, 0, 'Licencia de Maternidad'),
    (207, 7, 1, 0, 'Baja por Lesión'),
    (208, 8, 0, 0, 'Asuntos Familiares'),
    (209, 9, 1, 0, NULL),
    (210, 10, 0, 1, 'Trabajo Remoto'),
    (211, 11, 0, 1, NULL),
    (212, 12, 0, 1, 'Permiso Sin Goce de Sueldo'),
    (213, 13, 1, 0, 'Tratamiento Médico'),
    (214, 14, 0, 1,NULL),
    (215, 15, 1, 0, 'Rehabilitación'),
    (216, 16, 0, 1, NULL),
    (217, 17, 0, 1, 'Incidente Laboral'),
    (218, 18, 0, 1, NULL),
    (219, 19, 1, 0, NULL),
    (220, 20, 0, 1, 'Proyecto Internacional'),
    (221, 21, 0, 0, 'Cuidado de Familiar Enfermo'),
    (222, 22, 0, 1, NULL),
    (223, 23, 1, 0, 'Tratamiento Psicológico'),
    (224, 24, 0, 1, 'Suspensión Laboral'),
    (225, 25, 1, 0, NULL),
    (226, 26, 0, 1, NULL),
    (227, 27, 0, 0, 'Licencia por Duelo'),
    (228, 28, 0, 1, 'Jornada Reducida'),
    (229, 29, 1, 0, NULL),
    (230, 30, 0, 1, NULL),
    (231, 31, 1, 0, NULL),
    (232, 32, 0, 1, 'Capacitación Especializada'),
    (233, 33, 1, 0, 'Tratamiento Fisioterapéutico'),
    (34, 34, 0, 1, NULL),
    (235, 35, 0, 0, 'Descanso por Burnout'),
    (236, 36, 0, 1, 'Pasantía'),
    (237, 37, 0, 0, 'Licencia por Luto'),
    (238, 38, 0, 1, NULL),
    (239, 39, 1, 0, NULL),
    (240, 40, 0, 1, NULL),
    (241, 41, 1, 0, NULL),
    (242, 42, 0, 1, NULL),
    (243, 43, 0, 0, 'Licencia por Violencia Doméstica'),
    (244, 44, 0, 1, NULL),
    (245, 45, 1, 0, NULL),
    (246, 46, 0, 1, NULL),
    (247, 47, 1, 0, NULL),
    (248, 48, 0, 1, NULL),
    (249, 49, 1, 0, 'Tratamiento Psiquiátrico'),
    (250, 50, 0, 1, 'Misión Internacional');
END
GO

-- Tabla de Profesor.
BEGIN
    CREATE TABLE dbo.Profesor (
        ID_Profesor      INT          PRIMARY KEY NOT NULL,
        Nombre           NVARCHAR(30) NOT NULL,
        Apellido         NVARCHAR(30),
        Correo           NVARCHAR(50),
        Especializacion  BIT,
        Titulo_Academico BIT,
    );

    -- Inserción de 50 datos en la tabla Profesor.
    INSERT INTO dbo.Profesor (ID_Profesor, Nombre, Apellido, Correo, Especializacion, Titulo_Academico) VALUES
    (1, 'Juan', 'García', 'juan.garcia@example.com', 1, 1),
    (2, 'María', 'Martínez', 'maria.martinez@example.com', 0, 1),
    (3, 'Carlos', 'López', 'carlos.lopez@example.com', 1, 0),
    (4, 'Ana', 'Rodríguez', 'ana.rodriguez@example.com', 0, 0),
    (5, 'Pedro', 'Sánchez', 'pedro.sanchez@example.com', 1, 1),
    (6, 'Laura', 'Gómez', 'laura.gomez@example.com', 0, 1),
    (7, 'Sergio', 'Díaz', 'sergio.diaz@example.com', 1, 0),
    (8, 'Elena', 'Pérez', 'elena.perez@example.com', 0, 0),
    (9, 'Javier', 'Ruiz', 'javier.ruiz@example.com', 1, 1),
    (10, 'Carmen', 'Fernández', 'carmen.fernandez@example.com', 0, 1),
    (11, 'David', 'González', 'david.gonzalez@example.com', 1, 0),
    (12, 'Patricia', 'Moreno', 'patricia.moreno@example.com', 0, 0),
    (13, 'Roberto', 'Hernández', 'roberto.hernandez@example.com', 1, 1),
    (14, 'Luisa', 'Jiménez', 'luisa.jimenez@example.com', 0, 1),
    (15, 'Diego', 'Torres', 'diego.torres@example.com', 1, 0),
    (16, 'Natalia', 'Sanz', 'natalia.sanz@example.com', 0, 0),
    (17, 'Óscar', 'Ortega', 'oscar.ortega@example.com', 1, 1),
    (18, 'Alicia', 'Ramírez', 'alicia.ramirez@example.com', 0, 1),
    (19, 'Francisco', 'Vázquez', 'francisco.vazquez@example.com', 1, 0),
    (20, 'Beatriz', 'Alonso', 'beatriz.alonso@example.com', 0, 0),
    (21, 'Andrés', 'Molina', 'andres.molina@example.com', 1, 1),
    (22, 'Sara', 'Martín', 'sara.martin@example.com', 0, 1),
    (23, 'Raul', 'Gutiérrez', 'raul.gutierrez@example.com', 1, 0),
    (24, 'Marina', 'Iglesias', 'marina.iglesias@example.com', 0, 0),
    (25, 'Gonzalo', 'Navarro', 'gonzalo.navarro@example.com', 1, 1),
    (26, 'Eva', 'Cabrera', 'eva.cabrera@example.com', 0, 1),
    (27, 'Miguel', 'Roca', 'miguel.roca@example.com', 1, 0),
    (28, 'Lucía', 'Soler', 'lucia.soler@example.com', 0, 0),
    (29, 'César', 'Pascual', 'cesar.pascual@example.com', 1, 1),
    (30, 'Clara', 'Guerrero', 'clara.guerrero@example.com', 0, 1),
    (31, 'Ismael', 'Muñoz', 'ismael.munoz@example.com', 1, 0),
    (32, 'Adriana', 'Herrero', 'adriana.herrero@example.com', 0, 0),
    (33, 'Alberto', 'López', 'alberto.lopez@example.com', 1, 1),
    (34, 'Inés', 'Dominguez', 'ines.dominguez@example.com', 0, 1),
    (35, 'Roberto', 'Fernández', 'roberto.fernandez@example.com', 1, 0),
    (36, 'Cristina', 'Pérez', 'cristina.perez@example.com', 0, 0),
    (37, 'Joaquín', 'Sánchez', 'joaquin.sanchez@example.com', 1, 1),
    (38, 'Elena', 'García', 'elena.garcia@example.com', 0, 1),
    (39, 'Pablo', 'Martínez', 'pablo.martinez@example.com', 1, 0),
    (40, 'Marta', 'Vidal', 'marta.vidal@example.com', 0, 0),
    (41, 'Mario', 'Jiménez', 'mario.jimenez@example.com', 1, 1),
    (42, 'Raquel', 'Sánchez', 'raquel.sanchez@example.com', 0, 1),
    (43, 'Alberto', 'Gómez', 'alberto.gomez@example.com', 1, 0),
    (44, 'Silvia', 'Rodríguez', 'silvia.rodriguez@example.com', 0, 0),
    (45, 'Diego', 'Martín', 'diego.martin@example.com', 1, 1),
    (46, 'Ana', 'Gutiérrez', 'ana.gutierrez@example.com', 0, 1),
    (47, 'Javier', 'Sanz', 'javier.sanz@example.com', 1, 0),
    (48, 'Laura', 'Fernández', 'laura.fernandez@example.com', 0, 0),
    (49, 'Roberto', 'Martínez', 'roberto.martinez@example.com', 1, 1),
    (50, 'Sara', 'Jiménez', 'sara.jimenez@example.com', 0, 1);
END
GO

-- Tabla de Materia.
BEGIN
    CREATE TABLE dbo.Materia (
        ID_Materia  INT          PRIMARY KEY NOT NULL,
        ID_Profesor INT          NOT NULL,
        Nombre      NVARCHAR(30) NOT NULL,
        FOREIGN KEY (ID_Profesor) REFERENCES dbo.Profesor(ID_Profesor)
    );

    -- Inserción de 50 datos en la tabla Materia.
    INSERT INTO dbo.Materia (ID_Materia, ID_Profesor, Nombre) VALUES
	(1, 1, 'Matemáticas'),
	(2, 2, 'Ciencias Naturales'),
	(3, 3, 'Historia'),
	(4, 4, 'Literatura'),
	(5, 5, 'Educación Física'),
	(6, 6, 'Inglés'),
	(7, 7, 'Arte'),
	(8, 8, 'Programación'),
	(9, 9, 'Química'),
	(10, 10, 'Biología'),
	(11, 11, 'Geografía'),
	(12, 12, 'Música'),
	(13, 13, 'Economía'),
	(14, 14, 'Filosofía'),
	(15, 15, 'Dibujo Técnico'),
	(16, 16, 'Educación Cívica'),
	(17, 17, 'Física'),
	(18, 18, 'Tecnología'),
	(19, 19, 'Psicología'),
	(20, 20, 'Sociología'),
	(21, 21, 'Danza'),
	(22, 22, 'Administración'),
	(23, 23, 'Marketing'),
	(24, 24, 'Estadística'),
	(25, 25, 'Derecho'),
	(26, 26, 'Medicina'),
	(27, 27, 'Arquitectura'),
	(28, 28, 'Psiquiatría'),
	(29, 29, 'Antropología'),
	(30, 30, 'Gastronomía'),
	(31, 31, 'Turismo'),
	(32, 32, 'Veterinaria'),
	(33, 33, 'Astronomía'),
	(34, 34, 'Meteorología'),
	(35, 35, 'Náutica'),
	(36, 36, 'Cine'),
	(37, 37, 'Teatro'),
	(38, 38, 'Telecomunicaciones'),
	(39, 39, 'Energías Renovables'),
	(40, 40, 'Diseño Gráfico'),
	(41, 41, 'Ecología'),
	(42, 42, 'Gestión Ambiental'),
	(43, 43, 'Nutrición'),
	(44, 44, 'Farmacia'),
	(45, 45, 'Odontología'),
	(46, 46, 'Enfermería'),
	(47, 47, 'Optometría'),
	(48, 48, 'Kinesiología'),
	(49, 49, 'Logopedia'),
	(50, 50,  'Trabajo Social');
END
GO

-- Tabla de Matrícula.
BEGIN
    CREATE TABLE dbo.Matricula (
        ID_Matricula  INT PRIMARY KEY NOT NULL,
        ID_Materia    INT NOT NULL,
        ID_Estudiante INT NOT NULL,
        FOREIGN KEY (ID_Materia) REFERENCES dbo.Materia(ID_Materia),
        FOREIGN KEY (ID_Estudiante) REFERENCES dbo.Estudiante(ID_Estudiante)
    );

    -- Inserción de 50 datos en la tabla Matrícula.
    INSERT INTO dbo.Matricula (ID_Matricula, ID_Materia, ID_Estudiante) VALUES
	(1, 1, 1),
	(2, 2, 2),
	(3, 3, 3),
	(4, 4, 4),
	(5, 5, 5),
	(6, 6, 6),
	(7, 7, 7),
	(8, 8, 8),
	(9, 9, 9),
	(10, 10, 10),
	(11, 11, 11),
	(12, 12, 12),
	(13, 13, 13),
	(14, 14, 14),
	(15, 15, 15),
	(16, 16, 16),
	(17, 17, 17),
	(18, 18, 18),
	(19, 19, 19),
	(20, 20, 20),
	(21, 21, 21),
	(22, 22, 22),
	(23, 23, 23),
	(24, 24, 24),
	(25, 25, 25),
	(26, 26, 26),
	(27, 27, 27),
	(28, 28, 28),
	(29, 29, 29),
	(30, 30, 30),
	(31, 31, 31),
	(32, 32, 32),
	(33, 33, 33),
	(34, 34, 34),
	(35, 35, 35),
	(36, 36, 36),
	(37, 37, 37),
	(38, 38, 38),
	(39, 39, 39),
	(40, 40, 40),
	(41, 41, 41),
	(42, 42, 42),
	(43, 43, 43),
	(44, 44, 44),
	(45, 45, 45),
	(46, 46, 46),
	(47, 47, 47),
	(48, 48, 48),
	(49, 49, 49),
	(50, 50, 50);
END
GO

-- Tabla de Horario.
BEGIN
    CREATE TABLE dbo.Horario (
        ID_Horario        INT          PRIMARY KEY NOT NULL,
        ID_Materia        INT          NOT NULL,
        Numero_Dia        NVARCHAR(5),
        ID_Hora           INT,
        Periodo_Academico VARCHAR(10),
        FOREIGN KEY (ID_Materia) REFERENCES dbo.Materia(ID_Materia)
    );

    -- Inserción de 50 datos en la tabla Horario.
    INSERT INTO dbo.Horario (ID_Horario, ID_Hora, ID_Materia, Numero_Dia, Periodo_Academico) VALUES
    (1, 1, 1, 1, '2023A'),
    (2, 2, 2, 2, '2023B'),
    (3, 3, 3, 3, '2023A'),
    (4, 4, 4, 4, '2023B'),
    (5, 5, 5, 5, '2023A'),
    (6, 6, 6, 6, '2023B'),
    (7, 7, 7, 7, '2023A'),
    (8, 8, 8, 1, '2023B'),
    (9, 9, 9, 2, '2023A'),
    (10, 10, 10, 3, '2023B'),
    (11, 11, 11, 4, '2023A'),
    (12, 12, 12, 5, '2023B'),
    (13, 13, 13, 6, '2023A'),
    (14, 14, 14, 7, '2023B'),
    (15, 15, 15, 1, '2023A'),
    (16, 16, 16, 2, '2023B'),
    (17, 17, 17, 3, '2023A'),
    (18, 18, 18, 4, '2023B'),
    (19, 19, 19, 5, '2023A'),
    (20, 20, 20, 6, '2023B'),
    (21, 21, 21, 7, '2023A'),
    (22, 22, 22, 1, '2023B'),
    (23, 23, 23, 2, '2023A'),
    (24, 24, 24, 3, '2023B'),
    (25, 25, 25, 4, '2023A'),
    (26, 26, 26, 5, '2023B'),
    (27, 27, 27, 6, '2023A'),
    (28, 28, 28, 7, '2023B'),
    (29, 29, 29, 1, '2023A'),
    (30, 30, 30, 2, '2023B'),
    (31, 31, 31, 3, '2023A'),
    (32, 32, 32, 4, '2023B'),
    (33, 33, 33, 5, '2023A'),
    (34, 34, 34, 6, '2023B'),
    (35, 35, 35, 7, '2023A'),
    (36, 36, 36, 1, '2023B'),
    (37, 37, 37, 2, '2023A'),
    (38, 38, 38, 3, '2023B'),
    (39, 39, 39, 4, '2023A'),
    (40, 40, 40, 5, '2023B'),
    (41, 41, 41, 6, '2023A'),
    (42, 42, 42, 7, '2023B'),
    (43, 43, 43, 1, '2023A'),
    (44, 44, 44, 2, '2023B'),
    (45, 45, 45, 3, '2023A'),
    (46, 46, 46, 4, '2023B'),
    (47, 47, 47, 5, '2023A'),
    (48, 48, 48, 6, '2023B'),
    (49, 49, 49, 7, '2023A'),
    (50, 50, 50, 1, '2023B');
END
GO

-- Tabla de Hora.
BEGIN
    CREATE TABLE dbo.Hora (
        ID_Hora      INT           PRIMARY KEY NOT NULL,
        ID_Horario   INT           NOT NULL,
        Hora_Inicial NVARCHAR(10),
        Hora_Final   NVARCHAR(10),
        FOREIGN KEY (ID_Horario) REFERENCES dbo.Horario(ID_Horario)
    );

    -- Inserción de 50 datos en la tabla Hora.
    INSERT INTO dbo.Hora (ID_Hora, ID_Horario, Hora_Inicial, Hora_Final) VALUES
	(1, 1, '08:00', '10:00'),
	(2, 2, '10:00', '12:00'),
	(3, 3, '14:00', '16:00'),
	(4, 4, '08:00', '10:00'),
	(5, 5, '10:00', '12:00'),
	(6, 6, '14:00', '16:00'),
	(7, 7, '08:00', '10:00'),
	(8, 8, '10:00', '12:00'),
	(9, 9, '14:00', '16:00'),
	(10, 10, '08:00', '10:00'),
	(11, 11, '10:00', '12:00'),
	(12, 12, '14:00', '16:00'),
	(13, 13, '08:00', '10:00'),
	(14, 14, '10:00', '12:00'),
	(15, 15, '14:00', '16:00'),
	(16, 16, '08:00', '10:00'),
	(17, 17, '10:00', '12:00'),
	(18, 18, '14:00', '16:00'),
	(19, 19, '08:00', '10:00'),
	(20, 20, '10:00', '12:00'),
	(21, 21, '14:00', '16:00'),
	(22, 22, '08:00', '10:00'),
	(23, 23, '10:00', '12:00'),
	(24, 24, '14:00', '16:00'),
	(25, 25, '08:00', '10:00'),
	(26, 26, '10:00', '12:00'),
	(27, 27, '14:00', '16:00'),
	(28, 28, '08:00', '10:00'),
	(29, 29, '10:00', '12:00'),
	(30, 30, '14:00', '16:00'),
	(31, 31, '08:00', '10:00'),
	(32, 32, '10:00', '12:00'),
	(33, 33, '14:00', '16:00'),
	(34, 34, '08:00', '10:00'),
	(35, 35, '10:00', '12:00'),
	(36, 36, '14:00', '16:00'),
	(37, 37, '08:00', '10:00'),
	(38, 38, '10:00', '12:00'),
	(39, 39, '14:00', '16:00'),
	(40, 40, '08:00', '10:00'),
	(41, 41, '10:00', '12:00'),
	(42, 42, '14:00', '16:00'),
	(43, 43, '08:00', '10:00'),
	(44, 44, '10:00', '12:00'),
	(45, 45, '14:00', '16:00'),
	(46, 46, '08:00', '10:00'),
	(47, 47, '10:00', '12:00'),
	(48, 48, '14:00', '16:00'),
	(49, 49, '08:00', '10:00'),
	(50, 50, '10:00', '12:00');
END
GO

-- Tabla de Auditoría.
BEGIN
    CREATE TABLE dbo.Auditoria (
        ID_Auditoria   INT              PRIMARY KEY NOT NULL,
        Mensaje        NVARCHAR(300)    NOT NULL,
        Fecha_Registro DATETIME DEFAULT GETDATE()
    );
END
GO

-- =============================================
-- PROCEDIMIENTOS ALMACENADOS
-- =============================================

-- Procedimiento almacenado para Obtener Estudiantes Por Materia.
CREATE PROCEDURE dbo.ObtenerEstudiantePorMateria
    @ID_Materia INT
AS
BEGIN
    SELECT e.*
    FROM dbo.Matricula m
    INNER JOIN dbo.Estudiante e ON m.ID_Estudiante = e.ID_Estudiante
    WHERE m.ID_Materia = @ID_Materia;
END
GO

-- Procedimiento almacenado para Obtener Motivo.
CREATE PROCEDURE dbo.ObtenerMotivo
AS
BEGIN
    SELECT *
    FROM dbo.Motivo;
END
GO

-- Procedimiento almacenado para Obtener Estudiante Por Direccion.
CREATE PROCEDURE dbo.ObtenerEstudiantePorDireccion
    @Direccion NVARCHAR(500)
AS
BEGIN
    SELECT e.*
    FROM dbo.Estudiante e
    INNER JOIN dbo.DatosPersonales dp
        ON e.ID_DatosPersonales = dp.ID_DatosPersonales
    WHERE dp.Direccion = @Direccion;
END
GO

-- Procedimiento almacenado para Actualizar Fecha Final de Congelamiento.
CREATE PROCEDURE dbo.ActualizarFechaFinalCongelamiento
    @ID_Fecha INT,
    @NuevaFechaFinal DATE
AS
BEGIN
    UPDATE dbo.Fecha
    SET Fecha_Fin = @NuevaFechaFinal
    WHERE ID_Fecha = @ID_Fecha;
END
GO

-- Procedimiento almacenado para Obtener Materias Por Profesor.
CREATE PROCEDURE dbo.ObtenerMateriasPorProfesor
    @ID_Profesor INT
AS
BEGIN
    SELECT *
    FROM dbo.Materia
    WHERE ID_Profesor = @ID_Profesor;
END
GO

-- Procedimiento almacenado para Obtener Año de Ingreso de Estudiante.
CREATE PROCEDURE dbo.ObtenerAnnioIngresoEstudiante
    @ID_Estudiante INT
AS
BEGIN
    SELECT Annio_Ingreso
    FROM dbo.Estudiante
    WHERE ID_Estudiante = @ID_Estudiante;
END
GO

-- Procedimiento almacenado para Obtener Horario Por Materia.
CREATE PROCEDURE dbo.ObtenerHorarioPorMateria
    @ID_Materia INT
AS
BEGIN
    SELECT *
    FROM dbo.Horario
    WHERE ID_Materia = @ID_Materia;
END
GO

-- =============================================
-- FUNCIONES
-- =============================================

-- Función para Contar estudiantes Por Materia.
CREATE FUNCTION dbo.ContarEstudiantesPorMateria (@ID_Materia INT)
RETURNS INT
AS
BEGIN
    DECLARE @Total INT
    
    SELECT @Total = COUNT(*)
    FROM dbo.Matricula
    WHERE ID_Materia = @ID_Materia

    RETURN @Total;
END
GO

-- Función para Obtener Congelamientos Activos.
CREATE FUNCTION dbo.ObtenerCongelamientosActivos()
RETURNS TABLE
AS
RETURN (
    SELECT *
    FROM dbo.Congelamiento
    WHERE Activo = 1
);
GO

-- Función para Obtener Congelamientos Inactivos.
CREATE FUNCTION dbo.ObtenerCongelamientosInactivos()
RETURNS TABLE
AS
RETURN (
    SELECT *
    FROM dbo.Congelamiento
    WHERE Activo = 0
);
GO

-- Función para Contar Profesores Por Especialización.
CREATE FUNCTION dbo.ContarProfesoresPorEspecializacion (@Especializacion NVARCHAR(100))
RETURNS INT
AS
BEGIN
    DECLARE @Total INT

    SELECT @Total = COUNT(*)
    FROM dbo.Profesor
    WHERE Especializacion = @Especializacion

    RETURN @Total;
END
GO

-- =============================================
-- VISTAS
-- =============================================

-- Vista para Estudiantes con Datos Personales.
CREATE VIEW dbo.VistaEstudiante
AS
SELECT
    e.ID_Estudiante,
    e.Nombre,
    e.Apellido,
    e.Fecha_Nacimiento,
    e.Genero,
    e.Annio_Ingreso,
    dp.Direccion,
    dp.Correo
FROM dbo.Estudiante e
INNER JOIN dbo.DatosPersonales dp
    ON e.ID_DatosPersonales = dp.ID_DatosPersonales;
GO

-- Vista para Fechas Mayores a Cierta Fecha.
CREATE VIEW dbo.VistaFechasMayores
AS
SELECT *
FROM dbo.Fecha
WHERE Fecha_Inicio > '2023-12-14';
GO

-- Vista para Estudiantes y Materias.
CREATE VIEW dbo.VistaEstudiantesMateria
AS
SELECT
    e.ID_Estudiante,
    e.Nombre,
    e.Apellido,
    m.Nombre AS Materia
FROM dbo.Estudiante e
INNER JOIN dbo.Matricula ma ON e.ID_Estudiante = ma.ID_Estudiante
INNER JOIN dbo.Materia m ON ma.ID_Materia = m.ID_Materia;
GO

-- Vista para Estudiantes, Materias y Profesores.
CREATE VIEW dbo.VistaEstudiantesMateriaProfesor
AS
SELECT 
    e.ID_Estudiante,
    e.Nombre AS Nombre_Estudiante,
    e.Apellido,
    m.Nombre AS Materia,
    p.Nombre AS Profesor
FROM dbo.Estudiante e
INNER JOIN dbo.Matricula ma 
    ON e.ID_Estudiante = ma.ID_Estudiante
INNER JOIN dbo.Materia m 
    ON ma.ID_Materia = m.ID_Materia
INNER JOIN dbo.Profesor p 
    ON m.ID_Profesor = p.ID_Profesor;
GO

-- Vista para Congelamiento con Motivo.
CREATE VIEW dbo.VistaCongelamientoMotivo
AS
SELECT
    c.ID_Congelamiento,
    c.ID_Fecha,
    m.Salud,
    m.Laboral,
    m.Otros,
    c.Activo AS Congelamiento_Activo
FROM dbo.Congelamiento c
INNER JOIN dbo.Motivo m
    ON c.ID_Motivo = m.ID_Motivo;
GO

-- =============================================
-- DISPARADORES
-- =============================================

-- Disparador para Auditoría al Insertar Estudiante.
CREATE TRIGGER dbo.trgRegistroNuevoEstudiante
ON dbo.Estudiante
AFTER INSERT
AS
BEGIN
    INSERT INTO dbo.Auditoria (Mensaje, Fecha_Registro)
    SELECT
        'Nuevo estudiante registrado con ID: '
        + CAST(ID_Estudiante AS NVARCHAR),
        GETDATE()
    FROM INSERTED;
END
GO

-- Disparador para Actualizar Estado de Congelamiento.
CREATE TRIGGER dbo.trgActualizarEstadoCongelamiento
ON dbo.Congelamiento
AFTER UPDATE
AS
BEGIN
    UPDATE c
    SET Activo = i.Activo
    FROM dbo.Congelamiento c
    INNER JOIN INSERTED i
        ON c.ID_Congelamiento = i.ID_Congelamiento;
END
GO

-- Disparador para Auditoría al Actualizar Congelamiento.
CREATE TRIGGER dbo.trgAuditoriaActualizarCongelamiento
ON dbo.Congelamiento
AFTER UPDATE
AS
BEGIN
    INSERT INTO dbo.Auditoria (Mensaje, Fecha_Registro)
    SELECT 
        'Congelamiento actualizado. ID: ' 
        + CAST(i.ID_Congelamiento AS NVARCHAR(10)) 
        + ' | Estado actual: ' 
        + CAST(i.Activo AS NVARCHAR(1)),
        GETDATE()
    FROM INSERTED i;
END
GO
