USE [patstat2020b]
GO
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[tls222_appln_jp_class]') AND name = N'tls222_appln_jp_class_XLS222C1')
DROP INDEX [tls222_appln_jp_class_XLS222C1] ON [dbo].[tls222_appln_jp_class] WITH ( ONLINE = OFF )
GO

CREATE NONCLUSTERED INDEX [tls222_appln_jp_class_XLS222C1] ON [dbo].[tls222_appln_jp_class] 
(
	[jp_class_symbol] ASC,
	[jp_class_scheme] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = OFF) ON [PRIMARY]
GO

