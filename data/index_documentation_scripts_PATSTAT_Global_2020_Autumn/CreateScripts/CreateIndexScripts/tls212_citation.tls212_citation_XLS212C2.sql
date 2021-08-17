USE [patstat2020b]
GO
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[tls212_citation]') AND name = N'tls212_citation_XLS212C2')
DROP INDEX [tls212_citation_XLS212C2] ON [dbo].[tls212_citation] WITH ( ONLINE = OFF )
GO

CREATE NONCLUSTERED INDEX [tls212_citation_XLS212C2] ON [dbo].[tls212_citation] 
(
	[cited_pat_publn_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = OFF) ON [PRIMARY]
GO

