CREATE FUNCTION dbo.ObtenerCongelamientosInactivos()
RETURNS TABLE
AS
RETURN (
    SELECT *
    FROM dbo.Congelamiento
    WHERE Activo = 0
);
