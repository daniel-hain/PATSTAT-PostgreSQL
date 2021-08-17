USE [patstat2020b]
GO
/****** Object:  Table [dbo].[tls215_citn_categ]    Script Date: 22/03/2019 09:00:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tls215_citn_categ](
	[pat_publn_id] [int] NOT NULL DEFAULT ('0'),
	[citn_replenished] [int] NOT NULL DEFAULT ('0'),
	[citn_id] [smallint] NOT NULL DEFAULT ('0'),
	[citn_categ] [nvarchar](10) NOT NULL DEFAULT (''),
	[relevant_claim] [smallint] NOT NULL DEFAULT ('0'),
PRIMARY KEY CLUSTERED 
(
	[pat_publn_id] ASC,
	[citn_replenished] ASC,
	[citn_id] ASC,
	[citn_categ] ASC,
	[relevant_claim] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
