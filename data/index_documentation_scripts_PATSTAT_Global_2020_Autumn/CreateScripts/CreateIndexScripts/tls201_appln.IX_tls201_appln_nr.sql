USE [patstat2020b]
GO
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[tls201_appln]') AND name = N'IX_tls201_appln_nr')
DROP INDEX [IX_tls201_appln_nr] ON [dbo].[tls201_appln] WITH ( ONLINE = OFF )
GO

CREATE NONCLUSTERED INDEX [IX_tls201_appln_nr] ON [dbo].[tls201_appln] 
(
	[appln_auth] ASC,
	[appln_nr] ASC,
	[appln_kind] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO