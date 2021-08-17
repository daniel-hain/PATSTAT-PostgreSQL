USE [patstat2020b]
GO
/****** Object:  Table [dbo].[tls216_appln_contn]    Script Date: 07/07/2015 08:21:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tls216_appln_contn](
	[appln_id] [int] NOT NULL DEFAULT ('0'),
	[parent_appln_id] [int] NOT NULL DEFAULT ('0'),
	[contn_type] [char](3) NOT NULL DEFAULT (''),
PRIMARY KEY CLUSTERED 
(
	[APPLN_ID] ASC,
	[PARENT_APPLN_ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
