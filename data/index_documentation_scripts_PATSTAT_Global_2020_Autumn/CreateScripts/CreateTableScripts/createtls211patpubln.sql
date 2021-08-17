USE [patstat2020b]
GO

/****** Object:  Table [dbo].[tls211_pat_publn]    Script Date: 06/22/2018 01:03:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tls211_pat_publn](
	[pat_publn_id] [int] NOT NULL DEFAULT ('0'),
	[publn_auth] [char](2) NOT NULL DEFAULT (''),
	[publn_nr] [varchar](15) NOT NULL DEFAULT (''),
	[publn_nr_original] [varchar](100) NOT NULL DEFAULT (''),
	[publn_kind] [char](2) NOT NULL DEFAULT (''),
	[appln_id] [int] NOT NULL DEFAULT ('0'),
	[publn_date] [date] NOT NULL DEFAULT ('9999-12-31'),
	[publn_lg] [char](2) NOT NULL DEFAULT (''),
	[publn_first_grant] [char](1) NOT NULL DEFAULT ('N'),
	[publn_claims] [smallint] NOT NULL DEFAULT ('0'),
PRIMARY KEY CLUSTERED 
(
	[pat_publn_id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]




