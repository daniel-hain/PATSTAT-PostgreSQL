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
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[tls201_appln]') AND name = N'IX_tls201_appln_date')
DROP INDEX [IX_tls201_appln_date] ON [dbo].[tls201_appln] WITH ( ONLINE = OFF )
GO

CREATE NONCLUSTERED INDEX [IX_tls201_appln_date] ON [dbo].[tls201_appln] 
(
	[appln_filing_date] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[tls201_appln]') AND name = N'IX_tls201_appln_internat')
DROP INDEX [IX_tls201_appln_internat] ON [dbo].[tls201_appln] WITH ( ONLINE = OFF )
GO

CREATE NONCLUSTERED INDEX [IX_tls201_appln_internat] ON [dbo].[tls201_appln] 
(
	[internat_appln_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
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
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[tls204_appln_prior]') AND name = N'IX_tls204_prior_appln_id')
DROP INDEX [IX_tls204_prior_appln_id] ON [dbo].[tls204_appln_prior] WITH ( ONLINE = OFF )
GO

CREATE NONCLUSTERED INDEX [IX_tls204_prior_appln_id] ON [dbo].[tls204_appln_prior] 
(
	[prior_appln_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[tls206_person]') AND name = N'IX_tls206_person_cty')
DROP INDEX [IX_tls206_person_cty] ON [dbo].[tls206_person] WITH ( ONLINE = OFF )
GO

CREATE NONCLUSTERED INDEX [IX_tls206_person_cty] ON [dbo].[tls206_person] 
(
	[person_ctry_code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[tls207_pers_appln]') AND name = N'IX_tls207_pers_appln_id')
DROP INDEX [IX_tls207_pers_appln_id] ON [dbo].[tls207_pers_appln] WITH ( ONLINE = OFF )
GO

CREATE NONCLUSTERED INDEX [IX_tls207_pers_appln_id] ON [dbo].[tls207_pers_appln] 
(
	[appln_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = OFF) ON [PRIMARY]
GO
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[tls207_pers_appln]') AND name = N'IX_tls207_pers_appln_pers_id')
DROP INDEX [IX_tls207_pers_appln_pers_id] ON [dbo].[tls207_pers_appln] WITH ( ONLINE = OFF )
GO

CREATE NONCLUSTERED INDEX [IX_tls207_pers_appln_pers_id] ON [dbo].[tls207_pers_appln] 
(
	[person_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = OFF) ON [PRIMARY]
GO

IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[tls212_citation]') AND name = N'tls212_citation_XLS212C2')
DROP INDEX [tls212_citation_XLS212C2] ON [dbo].[tls212_citation] WITH ( ONLINE = OFF )
GO

CREATE NONCLUSTERED INDEX [tls212_citation_XLS212C2] ON [dbo].[tls212_citation] 
(
	[cited_pat_publn_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = OFF) ON [PRIMARY]
GO
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[tls212_citation]') AND name = N'tls212_citation_XLS212C3')
DROP INDEX [tls212_citation_XLS212C3] ON [dbo].[tls212_citation] WITH ( ONLINE = OFF )
GO

CREATE NONCLUSTERED INDEX [tls212_citation_XLS212C3] ON [dbo].[tls212_citation] 
(
	[cited_appln_id] ASC,
	[pat_publn_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = OFF) ON [PRIMARY]
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
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[tls211_pat_publn]') AND name = N'tls211_pat_publn_XLS211M3')
DROP INDEX [tls211_pat_publn_XLS211M3] ON [dbo].[tls211_pat_publn] WITH ( ONLINE = OFF )
GO

CREATE NONCLUSTERED INDEX [tls211_pat_publn_XLS211M3] ON [dbo].[tls211_pat_publn] 
(
	[appln_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = OFF) ON [PRIMARY]
GO
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[tls211_pat_publn]') AND name = N'tls211_pat_publn_XLS211M4')
DROP INDEX [tls211_pat_publn_XLS211M4] ON [dbo].[tls211_pat_publn] WITH ( ONLINE = OFF )
GO

CREATE NONCLUSTERED INDEX [tls211_pat_publn_XLS211M4] ON [dbo].[tls211_pat_publn] 
(
	[publn_date] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = OFF) ON [PRIMARY]
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

IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[tls223_appln_docus]') AND name = N'tls223_appln_docus_XLS223C1')
DROP INDEX [tls223_appln_docus_XLS223C1] ON [dbo].[tls223_appln_docus] WITH ( ONLINE = OFF )
GO

CREATE NONCLUSTERED INDEX [tls223_appln_docus_XLS223C1] ON [dbo].[tls223_appln_docus] 
(
	[docus_class_symbol] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = OFF) ON [PRIMARY]
GO

IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[tls226_person_orig]') AND name = N'IX_tls206_person_cty')
DROP INDEX [IX_tls226_person_id] ON [dbo].[tls226_person_orig] WITH ( ONLINE = OFF )
GO

CREATE NONCLUSTERED INDEX [IX_tls226_person_id] ON [dbo].[tls226_person_orig] 
(
	[person_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO

IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[tls227_pers_publn]') AND name = N'IX_tls227_pers_publn_id')
DROP INDEX [IX_tls227_pers_publn_id] ON [dbo].[tls227_pers_publn] WITH ( ONLINE = OFF )
GO

CREATE NONCLUSTERED INDEX [IX_tls227_pers_publn_id] ON [dbo].[tls227_pers_publn] 
(
	[pat_publn_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = OFF) ON [PRIMARY]
GO

IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[tls227_pers_publn]') AND name = N'IX_tls227_pers_publn_pers_id')
DROP INDEX [IX_tls227_pers_publn_pers_id] ON [dbo].[tls227_pers_publn] WITH ( ONLINE = OFF )
GO

CREATE NONCLUSTERED INDEX [IX_tls227_pers_publn_pers_id] ON [dbo].[tls227_pers_publn] 
(
	[person_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = OFF) ON [PRIMARY]
GO

IF EXISTS (SELECT * FROM sys.objects WHERE TYPE = 'UQ' AND name = N'UK_tls231_appln_id_seq_nr')
ALTER TABLE [dbo].[tls231_inpadoc_legal_event]   
DROP CONSTRAINT UK_tls231_appln_id_seq_nr;  
GO  

ALTER TABLE [dbo].[tls231_inpadoc_legal_event] ADD  CONSTRAINT [UK_tls231_appln_id_seq_nr] UNIQUE NONCLUSTERED 
(
	[appln_id] ASC,
	[event_seq_nr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO