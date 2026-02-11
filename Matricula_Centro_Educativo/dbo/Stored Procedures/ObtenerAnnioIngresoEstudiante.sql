CREATE PROCEDURE dbo.ObtenerAnnioIngresoEstudiante
    @ID_Estudiante INT
AS
BEGIN
    SELECT Annio_Ingreso
    FROM dbo.Estudiante
    WHERE ID_Estudiante = @ID_Estudiante;
END
