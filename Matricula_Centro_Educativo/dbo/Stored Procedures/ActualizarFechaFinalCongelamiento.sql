CREATE PROCEDURE dbo.ActualizarFechaFinalCongelamiento
    @ID_Fecha INT,
    @NuevaFechaFinal DATE
AS
BEGIN
    UPDATE dbo.Fecha
    SET Fecha_Fin = @NuevaFechaFinal
    WHERE ID_Fecha = @ID_Fecha;
END
