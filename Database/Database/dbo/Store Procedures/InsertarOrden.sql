﻿CREATE PROCEDURE [dbo].[InsertarOrden]
    @IdProducto int,
	@CantidadProducto int,
	@Estado bit
AS BEGIN
SET NOCOUNT ON

  BEGIN TRANSACTION TRASA

    BEGIN TRY
	
	INSERT INTO Orden
	(IdProducto,
	CantidadProducto,
	Estado
	)
	VALUES
	(
	@IdProducto,
	@CantidadProducto,
	@Estado
	)

  COMMIT TRANSACTION TRASA
  SELECT 0 AS CodeError, '' AS MsgError

  END TRY

  BEGIN CATCH

   SELECT 
         ERROR_NUMBER() AS CodeError,
		 ERROR_MESSAGE() AS MsgError
   
   ROLLBACK TRANSACTION TRASA

   END CATCH

 END