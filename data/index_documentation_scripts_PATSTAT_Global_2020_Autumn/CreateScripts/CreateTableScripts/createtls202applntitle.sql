USE [patstat2020b]
GO
/****** Object:  Table [dbo].[tls202_appln_title]    Script Date: 07/07/2015 08:16:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tls202_appln_title](
	[appln_id] [int] NOT NULL DEFAULT ('0'),
	[appln_title_lg] [char](2) NOT NULL DEFAULT (''),
	[appln_title] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[appln_id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
