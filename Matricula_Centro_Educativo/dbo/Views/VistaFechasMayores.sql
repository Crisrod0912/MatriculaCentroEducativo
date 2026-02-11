CREATE VIEW dbo.VistaFechasMayores
AS
SELECT *
FROM dbo.Fecha
WHERE Fecha_Inicio > '2023-12-14';
