CREATE VIEW dbo.VistaEstudiantesMateria
AS
SELECT
    e.ID_Estudiante,
    e.Nombre,
    e.Apellido,
    m.Nombre AS Materia
FROM dbo.Estudiante e
INNER JOIN dbo.Matricula ma ON e.ID_Estudiante = ma.ID_Estudiante
INNER JOIN dbo.Materia m ON ma.ID_Materia = m.ID_Materia;
