CREATE TABLE dbo.Auditoria (
	ID_Auditoria   INT              PRIMARY KEY NOT NULL,
	Mensaje        NVARCHAR(300)    NOT NULL,
	Fecha_Registro DATETIME DEFAULT GETDATE()
);
