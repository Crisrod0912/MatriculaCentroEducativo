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
