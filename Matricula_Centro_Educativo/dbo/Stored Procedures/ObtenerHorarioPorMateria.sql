CREATE PROCEDURE dbo.ObtenerHorarioPorMateria
    @ID_Materia INT
AS
BEGIN
    SELECT *
    FROM dbo.Horario
    WHERE ID_Materia = @ID_Materia;
END
