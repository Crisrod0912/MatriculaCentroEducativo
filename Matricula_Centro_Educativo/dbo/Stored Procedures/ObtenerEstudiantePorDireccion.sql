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
