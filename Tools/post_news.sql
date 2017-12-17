USE [perpetuumsa]
GO
/****** Object:  StoredProcedure [dbo].[post_news]    Script Date: 12/17/2017 12:03:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Null
-- Create date: 12/16/17
-- Description:	This is my first stored procedure; it likely sucks
-- =============================================
ALTER PROCEDURE [dbo].[post_news] 
	--Add the parameters for the stored procedure here
	--Simple script to populate a "news" item to display to all clients on-login
	--Note: this loops through client languages and posts the same text
	--Translations should be posted if and when available; otherwise post english or client will NOT see news appear

	--title of post
	 @titleText nvarchar(128) = 'Default Title',
	 --body of post
	 @bodyText nvarchar(4000) = 'Default body text',
	 --NewsCategory of post (3 is devpost) from dbo.newscategories
	 @postType int = 3

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE
		--Language id - 0 is english; 8 total?
		@languageID int,
		@postTime smalldatetime

	SET @languageID = 0;
	SET @postTime =CONVERT(smalldatetime, GETDATE());

	While @languageID<8
		BEGIN;
		INSERT INTO [dbo].[news]
				   ([title]
				   ,[body]
				   ,[ntime]
				   ,[type]
				   ,[language])
			 VALUES
				   (@titleText
				   ,@bodyText
				   ,@postTime
				   ,@postType
				   ,@languageID)
		   SET @languageID = @languageID + 1;
	END;
END
