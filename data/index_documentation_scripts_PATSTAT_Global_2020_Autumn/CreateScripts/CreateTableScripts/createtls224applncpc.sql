USE [patstat2020b]
GO

/****** Object:  Table [dbo].[tls224_appln_cpc]    Script Date: 30/12/2019 18:00:00 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tls224_appln_cpc](
	[appln_id] [int] NOT NULL DEFAULT ('0'),
	[cpc_class_symbol] [varchar](19) NOT NULL DEFAULT (''),
PRIMARY KEY CLUSTERED 
(
	[appln_id] ASC,
	[cpc_class_symbol] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
