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
	