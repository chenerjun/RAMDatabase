﻿-- =============================================
-- Author:		William Chen
-- Create date: 2017-10-26
-- Description:	For Kristen's CRD project, Generate Table TaxonomyCode_CustomRecordType
-- =============================================
CREATE PROCEDURE [CRD].[Generate_TaxonomyCode_CustomRecordType] 
 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	TRUNCATE TABLE [crd].[TaxonomyCode_CustomRecordType];
    -- Insert statements for procedure here
	INSERT INTO [crd].[TaxonomyCode_CustomRecordType] ([ETLLoadID],[TaxonomyCode],[CustomRecordType],[EnteredOn],[UpdatedOn])

			select   e.etlloadid, c.taxonomycode, 'RAM'  as CustomRecordType,c.EnteredOn , c.UpdatedOn   
			from [crd].[ETLLoadID_TaxonomyCode]  as [c]  left join 
			etlload as e on [c].ETLLoadID = e.ETLLoadID
			where taxonomycodes is NOT NULL and   CustomRecordType like '%RAM%'
 
			 UNION  


			select   e.etlloadid, c.taxonomycode, 'MCYS' as CustomRecordType,c.EnteredOn , c.UpdatedOn   
			from [crd].[ETLLoadID_TaxonomyCode]  as [c]  left join 
			etlload as e on [c].ETLLoadID = e.ETLLoadID
			where taxonomycodes is NOT NULL and   CustomRecordType like '%MCYS%'

			UNION  

			select   e.etlloadid,  c.taxonomycode , 'G2T'  as CustomRecordType,c.EnteredOn , c.UpdatedOn   
			from [crd].[ETLLoadID_TaxonomyCode]  as [c]  left join 
			etlload as e on [c].ETLLoadID = e.ETLLoadID
			where taxonomycodes is NOT NULL and   CustomRecordType like '%G2T%'
			order by e.etlloadid


END
