USE [patstat2020b]
GO

/****** Object:  Table [dbo].[tls223_appln_docus]    Script Date: 07/07/2015 04:32:25 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tls223_appln_docus](
	[appln_id] [int] NOT NULL DEFAULT ('0'),
	[docus_class_symbol] [varchar](50) NOT NULL DEFAULT (''),
PRIMARY KEY CLUSTERED 
(
	[appln_id] ASC,
	[docus_class_symbol] ASC
)WITH (IGNORE_DUP_KEY = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

