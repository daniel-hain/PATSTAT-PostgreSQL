USE [patstat2020b]
GO
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[tls204_appln_prior]') AND name = N'IX_tls204_prior_appln_id')
DROP INDEX [IX_tls204_prior_appln_id] ON [dbo].[tls204_appln_prior] WITH ( ONLINE = OFF )
GO

CREATE NONCLUSTERED INDEX [IX_tls204_prior_appln_id] ON [dbo].[tls204_appln_prior] 
(
	[prior_appln_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO

