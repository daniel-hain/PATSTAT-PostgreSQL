USE [patstat2020b]
GO
/****** Object:  Table [dbo].[tls214_npl_publn]    Script Date: 16/03/2018 08:20:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tls214_npl_publn](
	[npl_publn_id] [int] NOT NULL DEFAULT ('0'),
	[npl_type] [char](1) NOT NULL DEFAULT (''),
	[npl_biblio] [nvarchar](max) NOT NULL DEFAULT (''),
	[npl_author] [nvarchar](1000) NOT NULL DEFAULT (''),
	[npl_title1] [nvarchar](1000) NOT NULL DEFAULT (''),
	[npl_title2] [nvarchar](1000) NOT NULL DEFAULT (''),
	[npl_editor] [nvarchar](500) NOT NULL DEFAULT (''),
	[npl_volume] [nvarchar](50) NOT NULL DEFAULT (''),
	[npl_issue] [nvarchar](50) NOT NULL DEFAULT (''),
	[npl_publn_date] [varchar](8) NOT NULL DEFAULT (''),
	[npl_publn_end_date] [varchar](8) NOT NULL DEFAULT (''),
	[npl_publisher] [nvarchar](500) NOT NULL DEFAULT (''),
	[npl_page_first] [varchar](200) NOT NULL DEFAULT (''),
	[npl_page_last] [varchar](200) NOT NULL DEFAULT (''),
	[npl_abstract_nr] [varchar](50) NOT NULL DEFAULT (''),
	[npl_doi] [varchar](500) NOT NULL DEFAULT (''),
	[npl_isbn] [varchar](30) NOT NULL DEFAULT (''),
	[npl_issn] [varchar](30) NOT NULL DEFAULT (''),
	[online_availability] [varchar](500) NOT NULL DEFAULT (''),	
	[online_classification] [varchar](35) NOT NULL DEFAULT (''),
	[online_search_date] [varchar](8) NOT NULL DEFAULT (''),
PRIMARY KEY CLUSTERED 
(
	[npl_publn_id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
