CREATE PROCEDURE dbo.ObtenerMateriasPorProfesor
    @ID_Profesor INT
AS
BEGIN
    SELECT *
    FROM dbo.Materia
    WHERE ID_Profesor = @ID_Profesor;
END
