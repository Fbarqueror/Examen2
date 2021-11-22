CREATE PROCEDURE [dbo].[ListaProducto]
AS
	BEGIN
	SET NOCOUNT ON

	SELECT IdProducto
		  ,NombreProducto
	  FROM Producto;

	END