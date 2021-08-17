USE [patstat2020b]
GO
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[tls209_appln_ipc]') AND name = N'tls209_appl_ipc_XLS209M1')
DROP INDEX [tls209_appl_ipc_XLS209M1] ON [dbo].[tls209_appln_ipc] WITH ( ONLINE = OFF )
GO

CREATE NONCLUSTERED INDEX [tls209_appl_ipc_XLS209M1] ON [dbo].[tls209_appln_ipc] 
(
	[ipc_class_symbol] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = OFF) ON [PRIMARY]
GO

