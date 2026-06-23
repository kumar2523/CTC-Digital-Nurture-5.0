BEGIN TRY

    DECLARE @Number1 INT = 100;
    DECLARE @Number2 INT = 0;

    SELECT @Number1 / @Number2 AS Result;

END TRY

BEGIN CATCH

    SELECT
        ERROR_NUMBER() AS ErrorNumber,
        ERROR_MESSAGE() AS ErrorMessage;

END CATCH;
GO