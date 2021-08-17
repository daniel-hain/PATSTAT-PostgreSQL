USE [patstat2020b]
GO
/****** Object:  Table [dbo].[tls201_appln]    Script Date: 06/22/2018 08:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tls201_appln](
	[appln_id] [int] NOT NULL DEFAULT ('0'),
	[appln_auth] [char](2) NOT NULL DEFAULT (''),
	[appln_nr] [varchar](15)  NOT NULL DEFAULT (''),
	[appln_kind] [char](2) NOT NULL DEFAULT ('  '),
	[appln_filing_date] [date] NOT NULL DEFAULT ('9999-12-31'),
	[appln_filing_year] [smallint] NOT NULL DEFAULT '9999',
	[appln_nr_epodoc] [varchar](20)  NOT NULL DEFAULT (''),
	[appln_nr_original] [varchar](100) NOT NULL DEFAULT (''),
	[ipr_type] [char](2) NOT NULL DEFAULT (''),
	[receiving_office] [char](2) NOT NULL DEFAULT (''),
	[internat_appln_id] [int] NOT NULL DEFAULT ('0'),
	[int_phase] [char](1) NOT NULL DEFAULT ('N'),
	[reg_phase] [char](1) NOT NULL DEFAULT ('N'),
	[nat_phase] [char](1) NOT NULL DEFAULT ('N'),
	[earliest_filing_date] [date] NOT NULL DEFAULT ('9999-12-31'),
	[earliest_filing_year] [smallint] NOT NULL DEFAULT '9999',
	[earliest_filing_id] [int] NOT NULL DEFAULT '0',
	[earliest_publn_date] [date] NOT NULL DEFAULT ('9999-12-31'),
	[earliest_publn_year] [smallint] NOT NULL DEFAULT '9999',
	[earliest_pat_publn_id] [int] NOT NULL DEFAULT '0',
	[granted] [char](1) NOT NULL DEFAULT ('N'),
	[docdb_family_id] [int] NOT NULL DEFAULT ('0'),
	[inpadoc_family_id] [int] NOT NULL DEFAULT ('0'),
	[docdb_family_size] [smallint] NOT NULL default '0',
	[nb_citing_docdb_fam] [smallint] NOT NULL default '0',
	[nb_applicants] [smallint] NOT NULL default '0',
	[nb_inventors] [smallint] NOT NULL default '0',
PRIMARY KEY CLUSTERED 
(
	[appln_id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
