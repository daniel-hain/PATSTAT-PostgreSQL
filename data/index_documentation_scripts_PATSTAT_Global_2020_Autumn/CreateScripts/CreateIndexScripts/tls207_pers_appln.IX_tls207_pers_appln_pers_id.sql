USE [patstat2020b]
GO
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[tls207_pers_appln]') AND name = N'IX_tls207_pers_appln_pers_id')
DROP INDEX [IX_tls207_pers_appln_pers_id] ON [dbo].[tls207_pers_appln] WITH ( ONLINE = OFF )
GO

CREATE NONCLUSTERED INDEX [IX_tls207_pers_appln_pers_id] ON [dbo].[tls207_pers_appln] 
(
	[person_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = OFF) ON [PRIMARY]
GO

