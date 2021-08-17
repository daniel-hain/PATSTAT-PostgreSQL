USE [patstat2020b]
GO

/****** Object:  Table [dbo].[tls222_appln_jp_class]    Script Date: 07/07/2015 04:32:25 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tls222_appln_jp_class](
	[appln_id] [int] NOT NULL DEFAULT ('0'),
	[jp_class_scheme] [varchar](5) NOT NULL DEFAULT (''),
	[jp_class_symbol] [varchar](50) NOT NULL DEFAULT (''),
PRIMARY KEY CLUSTERED 
(
	[appln_id] ASC,
	[jp_class_scheme] ASC,
	[jp_class_symbol] ASC
)WITH (IGNORE_DUP_KEY = ON) ON [PRIMARY]
) ON [PRIMARY]

GO



