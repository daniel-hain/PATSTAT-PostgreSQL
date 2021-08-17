USE [patstat2020b]
GO
/****** Object:  Table [dbo].[tls206_person]    Script Date: 13/09/2019 08:18:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tls206_person](
	[person_id] [int] NOT NULL DEFAULT ('0'),
	[person_name] [nvarchar](500) NOT NULL DEFAULT (''),
	[person_name_orig_lg] [nvarchar](500) NOT NULL DEFAULT (''),
	[person_address] [nvarchar](1000) NOT NULL DEFAULT (''),
	[person_ctry_code] [char](2) NOT NULL DEFAULT (''),
	[nuts] [varchar](5) NOT NULL DEFAULT '',
	[nuts_level] [tinyint] NOT NULL DEFAULT ('9'),
	[doc_std_name_id] [int] NOT NULL DEFAULT ('0'),
	[doc_std_name] [nvarchar](500) NOT NULL DEFAULT (''),
	[psn_id] [int] NOT NULL DEFAULT ('0'),
	[psn_name] [nvarchar](500) NOT NULL DEFAULT (''),
	[psn_level] [tinyint] NOT NULL DEFAULT ('0'),
	[psn_sector] [varchar](50) NOT NULL DEFAULT (''),
	[han_id] [int] NOT NULL DEFAULT ('0'),
	[han_name] [nvarchar](500) NOT NULL DEFAULT (''),
	[han_harmonized] [int] NOT NULL DEFAULT ('0'),
PRIMARY KEY CLUSTERED 
(
	[person_id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
