USE [patstat2020b]
GO
/****** Object:  Table [dbo].[tls204_appln_prior]    Script Date: 07/07/2015 08:17:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tls204_appln_prior](
	[appln_id] [int] NOT NULL DEFAULT ('0'),
	[prior_appln_id] [int] NOT NULL DEFAULT ('0'),
	[prior_appln_seq_nr] [smallint] NOT NULL DEFAULT ('0'),
PRIMARY KEY CLUSTERED 
(
	[appln_id] ASC,
	[prior_appln_id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
