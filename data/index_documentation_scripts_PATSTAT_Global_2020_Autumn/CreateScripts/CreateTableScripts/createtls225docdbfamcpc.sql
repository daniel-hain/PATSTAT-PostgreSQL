USE [patstat2020b]
GO

/****** Object:  Table [dbo].[tls225_docdb_fam_cpc]    Script Date: 30/12/2019 18:00:00 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tls225_docdb_fam_cpc](
	[docdb_family_id] [int] NOT NULL DEFAULT ('0'),
	[cpc_class_symbol] [varchar](19) NOT NULL DEFAULT (''),
	[cpc_gener_auth] [char](2) NOT NULL DEFAULT (''),
	[cpc_version] [date] NOT NULL DEFAULT ('9999-12-31'),
	[cpc_position] [char](1) NOT NULL DEFAULT (''),
	[cpc_value] [char](1) NOT NULL DEFAULT (''),
	[cpc_action_date] [date] NOT NULL DEFAULT ('9999-12-31'),
	[cpc_status] [char](1) NOT NULL DEFAULT (''),
	[cpc_data_source] [char](1) NOT NULL DEFAULT (''),
PRIMARY KEY CLUSTERED 
(
	[docdb_family_id] ASC,
	[cpc_class_symbol] ASC,
	[cpc_gener_auth] ASC,
	[cpc_version] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
