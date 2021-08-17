USE [patstat2020b]
GO
/****** Object:  Table [dbo].[tls230_appln_techn_field]    Script Date: 07/07/2015 08:19:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tls230_appln_techn_field](
	[appln_id] [int] NOT NULL DEFAULT ('0'),
	[techn_field_nr] [tinyint] NOT NULL DEFAULT ('0'),
	[weight] [real] NOT NULL DEFAULT (1),
PRIMARY KEY CLUSTERED 
(
	[appln_id] ASC,
	[techn_field_nr] ASC
)WITH (IGNORE_DUP_KEY = ON) ON [PRIMARY]
) ON [PRIMARY]