CREATE VIEW dbo.VistaEstudiantesMateriaProfesor
AS
SELECT 
    e.ID_Estudiante,
    e.Nombre AS Nombre_Estudiante,
    e.Apellido,
    m.Nombre AS Materia,
    p.Nombre AS Profesor
FROM dbo.Estudiante e
INNER JOIN dbo.Matricula ma 
    ON e.ID_Estudiante = ma.ID_Estudiante
INNER JOIN dbo.Materia m 
    ON ma.ID_Materia = m.ID_Materia
INNER JOIN dbo.Profesor p 
    ON m.ID_Profesor = p.ID_Profesor;
	