USE [patstat2020b]
GO

IF EXISTS (SELECT * FROM sys.objects WHERE TYPE = 'UQ' AND name = N'UK_tls231_appln_id_seq_nr')
ALTER TABLE [dbo].[tls231_inpadoc_legal_event]   
DROP CONSTRAINT UK_tls231_appln_id_seq_nr;  
GO  

/****** Object:  Index [UK_tls231_appln_id_seq_nr]    Script Date: 19/01/2018 11:48:24 ******/
ALTER TABLE [dbo].[tls231_inpadoc_legal_event] ADD  CONSTRAINT [UK_tls231_appln_id_seq_nr] UNIQUE NONCLUSTERED 
(
	[appln_id] ASC,
	[event_seq_nr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
