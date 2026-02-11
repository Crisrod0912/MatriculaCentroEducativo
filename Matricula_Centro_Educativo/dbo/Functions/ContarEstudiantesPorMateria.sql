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
