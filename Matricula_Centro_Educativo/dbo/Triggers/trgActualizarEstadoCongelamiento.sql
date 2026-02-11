CREATE TRIGGER dbo.trgActualizarEstadoCongelamiento
ON dbo.Congelamiento
AFTER UPDATE
AS
BEGIN
    UPDATE c
    SET Activo = i.Activo
    FROM dbo.Congelamiento c
    INNER JOIN INSERTED i
        ON c.ID_Congelamiento = i.ID_Congelamiento;
END
