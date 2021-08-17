USE [patstat2020b]
GO
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[tls227_pers_publn]') AND name = N'IX_tls227_pers_publn_pers_id')
DROP INDEX [IX_tls227_pers_publn_pers_id] ON [dbo].[tls227_pers_publn] WITH ( ONLINE = OFF )
GO

CREATE NONCLUSTERED INDEX [IX_tls227_pers_publn_pers_id] ON [dbo].[tls227_pers_publn] 
(
	[person_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = OFF) ON [PRIMARY]
GO

