CREATE PROCEDURE dbo.ObtenerEstudiantePorMateria
    @ID_Materia INT
AS
BEGIN
    SELECT e.*
    FROM dbo.Matricula m
    INNER JOIN dbo.Estudiante e ON m.ID_Estudiante = e.ID_Estudiante
    WHERE m.ID_Materia = @ID_Materia;
END
