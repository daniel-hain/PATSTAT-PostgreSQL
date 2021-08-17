USE [patstat2020b]
GO
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[tls206_person]') AND name = N'IX_tls206_person_cty')
DROP INDEX [IX_tls206_person_cty] ON [dbo].[tls206_person] WITH ( ONLINE = OFF )
GO

CREATE NONCLUSTERED INDEX [IX_tls206_person_cty] ON [dbo].[tls206_person] 
(
	[person_ctry_code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO

