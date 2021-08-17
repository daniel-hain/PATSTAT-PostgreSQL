USE [patstat2020b]
GO
/****** Object:  Table [dbo].[tls231_inpadoc_legal_event]    Script Date: 19/01/2018 17:00:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tls231_inpadoc_legal_event](
	[event_id] [int] NOT NULL DEFAULT '0',
	[appln_id] [int] NOT NULL DEFAULT '0',
	[event_seq_nr] [smallint] NOT NULL default '0',
	[event_type] [char](3) NOT NULL DEFAULT ('	'),
	[event_auth] [char](2) NOT NULL DEFAULT ('  '),
	[event_code] [varchar](4)  NOT NULL DEFAULT (''),
	[event_filing_date] [date] NOT NULL DEFAULT ('9999-12-31'),
	[event_publn_date] [date] NOT NULL DEFAULT ('9999-12-31'),
	[event_effective_date] [date] NOT NULL DEFAULT ('9999-12-31'),
	[event_text] [varchar](1000) NOT NULL DEFAULT (''),
	[ref_doc_auth] [char](2) NOT NULL DEFAULT ('  '),
	[ref_doc_nr] [varchar](20) NOT NULL DEFAULT (''),
	[ref_doc_kind] [char](2) NOT NULL DEFAULT ('  '),
	[ref_doc_date] [date] NOT NULL DEFAULT ('9999-12-31'),
	[ref_doc_text] [varchar](1000) NOT NULL DEFAULT (''),
	[party_type] [varchar](3) NOT NULL DEFAULT ('	'),
	[party_seq_nr] [smallint] NOT NULL default '0',
	[party_new] [varchar](1000) NOT NULL DEFAULT (''),
	[party_old] [varchar](1000) NOT NULL DEFAULT (''),
	[spc_nr] [varchar](40) NOT NULL DEFAULT (''),
	[spc_filing_date] [date] NOT NULL DEFAULT ('9999-12-31'),
	[spc_patent_expiry_date] [date] NOT NULL DEFAULT ('9999-12-31'),
	[spc_extension_date] [date] NOT NULL DEFAULT ('9999-12-31'),
	[spc_text] [varchar](1000) NOT NULL DEFAULT (''),
	[designated_states] [varchar](1000) NOT NULL DEFAULT (''),
	[extension_states] [varchar](30) NOT NULL DEFAULT (''),
	[fee_country] [char](2) NOT NULL DEFAULT ('  '),
	[fee_payment_date] [date] NOT NULL DEFAULT ('9999-12-31'),
	[fee_renewal_year] [smallint] NOT NULL default '9999',
	[fee_text] [varchar](1000) NOT NULL DEFAULT (''),
	[lapse_country] [char](2) NOT NULL DEFAULT ('  '),
	[lapse_date] [date] NOT NULL DEFAULT ('9999-12-31'),
	[lapse_text] [varchar](1000) NOT NULL DEFAULT (''),
	[reinstate_country] [char](2) NOT NULL DEFAULT ('  '),
	[reinstate_date] [date] NOT NULL DEFAULT ('9999-12-31'),
	[reinstate_text] [varchar](1000) NOT NULL DEFAULT (''),
	[class_scheme] [varchar](4) NOT NULL DEFAULT (''),
	[class_symbol] [varchar](50) NOT NULL DEFAULT (''),
PRIMARY KEY CLUSTERED 
(
	[event_id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
