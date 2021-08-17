USE [patstat2020b]
GO
/****** Object:  Table [dbo].[tls203_appln_abstr]    Script Date: 07/07/2015 08:16:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tls203_appln_abstr](
	[appln_id] [int] NOT NULL DEFAULT ('0'),
	[appln_abstract_lg] [char](2) NOT NULL DEFAULT (''),
	[appln_abstract] [nvarchar](max) NOT NULL DEFAULT (''),
PRIMARY KEY CLUSTERED 
(
	[appln_id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]