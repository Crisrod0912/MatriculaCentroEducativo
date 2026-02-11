CREATE VIEW dbo.VistaCongelamientoMotivo
AS
SELECT
    c.ID_Congelamiento,
    c.ID_Fecha,
    m.Salud,
    m.Laboral,
    m.Otros,
    c.Activo AS Congelamiento_Activo
FROM dbo.Congelamiento c
INNER JOIN dbo.Motivo m
    ON c.ID_Motivo = m.ID_Motivo;
	