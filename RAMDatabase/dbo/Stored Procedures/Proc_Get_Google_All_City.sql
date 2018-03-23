﻿-- =============================================
-- Author:		William Chen
-- Create date: March 4, 2017
-- Description:	Get city list from GoogleLocation
-- =============================================
CREATE PROCEDURE Proc_Get_Google_All_City 
 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

  SELECT googlelocationID as GoogleCityID, googlecity as GoogleCity, p.ProvinceAlias as province 
		FROM [GoogleLocation] as g join Province as p  on p.ProvinceID  = g.[GoogleProvinceID] 
 
END
