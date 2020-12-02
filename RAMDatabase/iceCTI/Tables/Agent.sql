﻿CREATE TABLE [iceCTI].[Agent] (
    [SwitchID]                        INT              NOT NULL,
    [AgentID]                         INT              NOT NULL,
    [AgentName]                       VARCHAR (40)     NOT NULL,
    [AgentType]                       INT              NOT NULL,
    [ClassOfService]                  INT              NOT NULL,
    [Password]                        VARCHAR (32)     NULL,
    [AutoLogonAddress]                INT              NOT NULL,
    [AutoLogonQueue]                  INT              NOT NULL,
    [PAQOverflowThreshold]            INT              NOT NULL,
    [NoAnswerThreshold]               INT              NOT NULL,
    [CfacDn]                          VARCHAR (256)    NULL,
    [CfnaDn]                          VARCHAR (256)    NULL,
    [CfpoDn]                          VARCHAR (256)    NULL,
    [CfnlDn]                          VARCHAR (256)    NULL,
    [CfState]                         INT              NOT NULL,
    [EmailAddress]                    VARCHAR (256)    NULL,
    [RemoteDn]                        VARCHAR (256)    NULL,
    [VoiceMailDN]                     VARCHAR (256)    NULL,
    [NumVoiceMailCalls]               INT              NOT NULL,
    [CallerNumPBX]                    VARCHAR (256)    NULL,
    [CallerNumPSTN]                   VARCHAR (256)    NULL,
    [AgentAlias]                      VARCHAR (40)     NULL,
    [ImageURL]                        VARCHAR (128)    NULL,
    [OutboundWorkflowDN]              INT              DEFAULT ((0)) NOT NULL,
    [OutboundWorkflowMode]            INT              DEFAULT ((0)) NOT NULL,
    [HotlineDN]                       VARCHAR (256)    NULL,
    [CallerName]                      VARCHAR (128)    NULL,
    [PlacedCallAutoWrapTimer]         INT              DEFAULT ((0)) NOT NULL,
    [UpdateCount]                     INT              DEFAULT ((1)) NOT NULL,
    [LogonToNotReadyReason]           INT              DEFAULT ((0)) NOT NULL,
    [IMAddress]                       VARCHAR (256)    NULL,
    [PasswordDTMF]                    VARCHAR (256)    NULL,
    [PasswordCOS]                     BIGINT           DEFAULT ((0)) NOT NULL,
    [PasswordLastChanged]             DATETIME         DEFAULT (getdate()) NULL,
    [PasswordAbsoluteLockedOutDate]   DATETIME         NULL,
    [PasswordLockedOutExpireDateTime] DATETIME         NULL,
    [ClassOfService2]                 INT              DEFAULT ((2)) NOT NULL,
    [ADFQDN]                          VARCHAR (256)    NULL,
    [ADGUID]                          UNIQUEIDENTIFIER NULL,
    [LanguageCode]                    VARCHAR (10)     NULL,
    CONSTRAINT [PK_Agent] PRIMARY KEY NONCLUSTERED ([SwitchID] ASC, [AgentID] ASC)
);
