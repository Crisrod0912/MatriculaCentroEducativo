CREATE FUNCTION dbo.ObtenerCongelamientosActivos()
RETURNS TABLE
AS
RETURN (
    SELECT *
    FROM dbo.Congelamiento
    WHERE Activo = 1
);
