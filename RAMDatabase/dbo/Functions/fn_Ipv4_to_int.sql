﻿-- =============================================
-- Author:		William Chen
-- Create date: July 26, 2017
-- Description:	Convert ipv4 address to a integer
-- =============================================
CREATE FUNCTION fn_Ipv4_to_int 
(
	-- Add the parameters for the function here
	@ipv4 nvarchar(50)
)
RETURNS bigint
AS
BEGIN
	-- Declare the return variable here
	DECLARE @intip bigint;

	-- Add the T-SQL statements to compute the return value here
	SELECT @intip = (((CONVERT([bigint],parsename(@ipv4,(4)))*(16777216)+CONVERT([bigint],parsename(@ipv4,(3)))*(65536))+CONVERT([bigint],parsename(@ipv4,(2)))*(256))+CONVERT([bigint],parsename(@ipv4,(1))))

	-- Return the result of the function
	RETURN @intip

END
