USE [spotifydb]
GO
/****** Object:  Table [dbo].[Albums]    Script Date: 20/03/2017 1:12:35 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Albums](
	[Album] [varchar](50) NOT NULL,
	[Año] [int] NOT NULL,
	[Artista] [varchar](50) NOT NULL,
	[ImageUrl] [varchar](100) NULL,
	[RankTotal] [float] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Artistas]    Script Date: 20/03/2017 1:12:35 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Artistas](
	[Artista] [varchar](50) NOT NULL,
	[ImageUrl] [varchar](100) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Canciones]    Script Date: 20/03/2017 1:12:35 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Canciones](
	[Artista] [varchar](50) NOT NULL,
	[Album] [varchar](50) NOT NULL,
	[Cancion] [varchar](50) NOT NULL,
	[Genero] [varchar](20) NOT NULL,
	[Compositor] [varchar](50) NOT NULL,
	[Colaboradores] [varchar](50) NULL,
	[Link] [varchar](100) NULL,
	[ImageUrl] [varchar](100) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Login]    Script Date: 20/03/2017 1:12:35 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login](
	[UserName] [varchar](15) NOT NULL,
	[Password] [varchar](15) NOT NULL,
	[UserLevel] [int] NOT NULL,
 CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ranks]    Script Date: 20/03/2017 1:12:35 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ranks](
	[Rank] [float] NOT NULL,
	[Album] [varchar](50) NOT NULL,
	[UserRated] [varchar](15) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 20/03/2017 1:12:35 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[Documento] [varchar](15) NOT NULL,
	[Nombre] [varchar](15) NOT NULL,
	[Apellido] [varchar](15) NOT NULL,
	[UserName] [varchar](15) NOT NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[Documento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
