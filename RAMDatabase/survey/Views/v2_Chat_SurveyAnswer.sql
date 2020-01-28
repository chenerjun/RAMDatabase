﻿
--
-- This is for the 4th Dimerence Co , a Agency , when he is developing onlive chat servey (Web Version) 
-- The 4th Dimenence is hired by Sarah Stanley to develop Website
--
CREATE VIEW [survey].[v2_Chat_SurveyAnswer]

AS

SELECT         a.surveyAnswer_ID as [surveyAnswer_ID]
, MAX(a.surveyQuestion_ID) as [surveyQuestion_ID]
, max(a.chatID) as [chatID]
, max(a.surveyAnswer) as [surveyAnswer]
, max(a.language) as [language]
, max(a.surveyAnswer_Device) as [surveyAnswer_Device]
, max(a.surveyAnswer_CreatedDate) as [surveyAnswer_CreatedDate]
FROM            survey.surveyanswer AS a
inner  JOIN
                   [survey].[v_SurveyLog]  AS b ON a.chatID = b.keywords
WHERE        (b.aclName = 'Chat')
GROUP BY a.surveyAnswer_ID