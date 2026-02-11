CREATE TRIGGER dbo.trgRegistroNuevoEstudiante
ON dbo.Estudiante
AFTER INSERT
AS
BEGIN
    INSERT INTO dbo.Auditoria (Mensaje, Fecha_Registro)
    SELECT
        'Nuevo estudiante registrado con ID: '
        + CAST(ID_Estudiante AS NVARCHAR),
        GETDATE()
    FROM INSERTED;
END
