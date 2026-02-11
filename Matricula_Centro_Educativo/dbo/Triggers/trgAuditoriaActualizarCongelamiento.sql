CREATE TRIGGER dbo.trgAuditoriaActualizarCongelamiento
ON dbo.Congelamiento
AFTER UPDATE
AS
BEGIN
    INSERT INTO dbo.Auditoria (Mensaje, Fecha_Registro)
    SELECT 
        'Congelamiento actualizado. ID: ' 
        + CAST(i.ID_Congelamiento AS NVARCHAR(10)) 
        + ' | Estado actual: ' 
        + CAST(i.Activo AS NVARCHAR(1)),
        GETDATE()
    FROM INSERTED i;
END
