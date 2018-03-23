﻿

CREATE view [dbo].[V_LastMonth_User_Lastyear_From_City]
 
 AS
SELECT * FROM
(select TOP (10) cscity + ', '+csregion+', '+ cscountry as [city] , count(apilogid) as [num]
from apilog 
where (logdate >= DateADD(year,-1,dbo.fn_lastMonth_startday()) and logdate < DateADD(year,-1,dbo.fn_lastMonth_endday()) ) and cscountry ='CA' AND cscity != ''
group by cscity + ', '+csregion+', '+ cscountry 
ORDER BY num desc) as a
