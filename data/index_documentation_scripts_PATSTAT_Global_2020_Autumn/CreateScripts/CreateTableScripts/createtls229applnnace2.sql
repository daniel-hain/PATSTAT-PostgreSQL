USE [patstat2020b]
GO
/****** Object:  Table [dbo].[tls229_appln_nace2]    Script Date: 07/07/2015 08:19:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tls229_appln_nace2](
	[appln_id] [int] NOT NULL DEFAULT ('0'),
	[nace2_code] [varchar](5) NOT NULL DEFAULT (''),
	[weight] [real] NOT NULL DEFAULT (1),
PRIMARY KEY CLUSTERED 
(
	[appln_id] ASC,
	[nace2_code] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
