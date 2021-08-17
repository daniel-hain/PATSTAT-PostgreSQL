USE [patstat2020b]
GO
/****** Object:  Table [dbo].[tls904_nuts]    Script Date: 02/28/2018 18:00:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tls904_nuts](
	[nuts] [varchar](5) NOT NULL DEFAULT (''),
	[nuts_level] [tinyint] NOT NULL DEFAULT ('0'),
	[nuts_label] [nvarchar](250) NOT NULL DEFAULT (''),
PRIMARY KEY CLUSTERED 
(
	[nuts] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

