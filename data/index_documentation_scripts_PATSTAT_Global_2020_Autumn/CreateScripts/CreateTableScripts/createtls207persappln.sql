USE [patstat2020b]
GO
/****** Object:  Table [dbo].[tls207_pers_appln]    Script Date: 07/07/2015 08:18:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tls207_pers_appln](
	[person_id] [int] NOT NULL DEFAULT ('0'),
	[appln_id] [int] NOT NULL DEFAULT ('0'),
	[applt_seq_nr] [smallint] NOT NULL DEFAULT ('0'),
	[invt_seq_nr] [smallint] NOT NULL DEFAULT ('0')
PRIMARY KEY CLUSTERED 
(
	[person_id] ASC,
	[appln_id] ASC,
	[applt_seq_nr] ASC,
	[invt_seq_nr] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
