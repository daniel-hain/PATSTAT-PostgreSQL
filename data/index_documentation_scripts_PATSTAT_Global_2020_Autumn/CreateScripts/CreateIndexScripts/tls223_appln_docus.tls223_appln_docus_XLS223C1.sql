USE [patstat2020b]
GO
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[tls223_appln_docus]') AND name = N'tls223_appln_docus_XLS223C1')
DROP INDEX [tls223_appln_docus_XLS223C1] ON [dbo].[tls223_appln_docus] WITH ( ONLINE = OFF )
GO

CREATE NONCLUSTERED INDEX [tls223_appln_docus_XLS223C1] ON [dbo].[tls223_appln_docus] 
(
	[docus_class_symbol] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = OFF) ON [PRIMARY]
GO

