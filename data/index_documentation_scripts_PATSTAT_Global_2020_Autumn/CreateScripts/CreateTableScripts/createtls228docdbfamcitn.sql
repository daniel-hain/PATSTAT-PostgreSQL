USE [patstat2020b]
GO
/****** Object:  Table [dbo].[tls228_docdb_fam_citn]    Script Date: 07/07/2015 18:32:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tls228_docdb_fam_citn](
	[docdb_family_id] [int] NOT NULL DEFAULT ('0'),
	[cited_docdb_family_id] [int] NOT NULL DEFAULT ('0'),
PRIMARY KEY CLUSTERED 
(
	[docdb_family_id] ASC,
	[cited_docdb_family_id] ASC
)WITH (IGNORE_DUP_KEY = ON) ON [PRIMARY]
) ON [PRIMARY]
