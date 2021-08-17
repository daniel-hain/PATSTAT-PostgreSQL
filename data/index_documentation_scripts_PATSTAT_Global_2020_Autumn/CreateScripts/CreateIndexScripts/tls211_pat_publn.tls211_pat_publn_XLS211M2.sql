USE [patstat2020b]
GO
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[tls211_pat_publn]') AND name = N'tls211_pat_publn_XLS211M2')
DROP INDEX [tls211_pat_publn_XLS211M2] ON [dbo].[tls211_pat_publn] WITH ( ONLINE = OFF )
GO

CREATE NONCLUSTERED INDEX [tls211_pat_publn_XLS211M2] ON [dbo].[tls211_pat_publn] 
(
	[publn_auth] ASC,
	[publn_nr] ASC,
	[publn_kind] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = OFF) ON [PRIMARY]
GO

