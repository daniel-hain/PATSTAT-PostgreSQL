USE [patstat2020b]
GO
/****** Object:  Table [dbo].[tls803_legal_event_code]    Script Date: 06/22/2018 08:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tls803_legal_event_code](
	[event_auth] [char](2) NOT NULL DEFAULT (''),
	[event_code] [varchar](4) NOT NULL DEFAULT (''),
	[event_impact] [char](1) NOT NULL DEFAULT (''),
	[event_descr] [varchar](250) NOT NULL DEFAULT (''),
	[event_descr_orig] [varchar](250) NOT NULL DEFAULT (''),
	[event_category_code] [char](1) NOT NULL DEFAULT (''),
	[event_category_title] [varchar](100) NOT NULL DEFAULT (''),
PRIMARY KEY CLUSTERED 
(
	[event_auth] ASC,
	[event_code] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
