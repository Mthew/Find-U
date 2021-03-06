USE [dbFind_U]
GO
/****** Object:  Table [dbo].[CarrersUniversity]    Script Date: 22/05/2019 5:35:15 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CarrersUniversity](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UniversityId] [int] NULL,
	[Name] [varchar](200) NULL,
	[Description] [varchar](300) NULL,
	[SNIESCode] [varchar](30) NULL,
	[QualifiedRegistration] [varchar](200) NULL,
	[Accreditation] [varchar](100) NULL,
	[TitleGranted] [varchar](100) NULL,
	[Duration] [int] NULL,
	[Modality] [varchar](100) NULL,
	[CityId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cities]    Script Date: 22/05/2019 5:35:15 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cities](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DeaprtamentId] [int] NULL,
	[Code] [varchar](10) NULL,
	[Name] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Countries]    Script Date: 22/05/2019 5:35:15 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Countries](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](10) NULL,
	[Name] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Departaments]    Script Date: 22/05/2019 5:35:15 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Departaments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CountyId] [int] NULL,
	[Code] [varchar](10) NULL,
	[Name] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Persons]    Script Date: 22/05/2019 5:35:15 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Persons](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DocumentType] [varchar](1) NULL,
	[DocumentNumber] [varchar](50) NULL,
	[Name] [varchar](200) NULL,
	[LastName] [varchar](200) NULL,
	[Phone] [varchar](30) NULL,
	[Email] [varchar](200) NULL,
	[Address] [varchar](200) NULL,
	[CityId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 22/05/2019 5:35:15 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](10) NULL,
	[Name] [varchar](100) NULL,
	[Description] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RolesUser]    Script Date: 22/05/2019 5:35:15 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RolesUser](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[RoleId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[University]    Script Date: 22/05/2019 5:35:15 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[University](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](200) NULL,
	[Nit] [varchar](30) NULL,
	[TypeId] [int] NULL,
	[Phone] [varchar](100) NULL,
	[Address] [varchar](200) NULL,
	[Email] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UniversityType]    Script Date: 22/05/2019 5:35:15 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UniversityType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](30) NULL,
	[Name] [varchar](100) NULL,
	[Description] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Users]    Script Date: 22/05/2019 5:35:15 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](200) NULL,
	[Password] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CarrersUniversity] ON 

INSERT [dbo].[CarrersUniversity] ([Id], [UniversityId], [Name], [Description], [SNIESCode], [QualifiedRegistration], [Accreditation], [TitleGranted], [Duration], [Modality], [CityId]) VALUES (1, 1, N'Contabilidad', N'es una carrera para contar', N'5241654', N'5', N'5', N'Profecional en contabilidad con enfacis en humanidades', 10, N'Mixta', 1)
SET IDENTITY_INSERT [dbo].[CarrersUniversity] OFF
SET IDENTITY_INSERT [dbo].[Cities] ON 

INSERT [dbo].[Cities] ([Id], [DeaprtamentId], [Code], [Name]) VALUES (1, 1, N'MED', N'Medellín')
INSERT [dbo].[Cities] ([Id], [DeaprtamentId], [Code], [Name]) VALUES (2, 1, N'SAB', N'Sabaneta')
INSERT [dbo].[Cities] ([Id], [DeaprtamentId], [Code], [Name]) VALUES (3, 1, N'EVG', N'Envigado')
SET IDENTITY_INSERT [dbo].[Cities] OFF
SET IDENTITY_INSERT [dbo].[Countries] ON 

INSERT [dbo].[Countries] ([Id], [Code], [Name]) VALUES (1, N'CO', N'Colombia')
SET IDENTITY_INSERT [dbo].[Countries] OFF
SET IDENTITY_INSERT [dbo].[Departaments] ON 

INSERT [dbo].[Departaments] ([Id], [CountyId], [Code], [Name]) VALUES (1, 1, N'ANT', N'Antioquia')
SET IDENTITY_INSERT [dbo].[Departaments] OFF
SET IDENTITY_INSERT [dbo].[University] ON 

INSERT [dbo].[University] ([Id], [Name], [Nit], [TypeId], [Phone], [Address], [Email]) VALUES (1, N'Universidad de Medellin', N'123321258', 1, N'321', N'321', N'udem@udem.edu.co')
INSERT [dbo].[University] ([Id], [Name], [Nit], [TypeId], [Phone], [Address], [Email]) VALUES (2, N'Universidad de Antioquia', N'1232546954', 2, N'213', N'321', N'udea@udea.edu.co')
SET IDENTITY_INSERT [dbo].[University] OFF
SET IDENTITY_INSERT [dbo].[UniversityType] ON 

INSERT [dbo].[UniversityType] ([Id], [Code], [Name], [Description]) VALUES (1, N'01', N'Privada', N'Privada')
INSERT [dbo].[UniversityType] ([Id], [Code], [Name], [Description]) VALUES (2, N'02', N'Publica', N'Publica')
SET IDENTITY_INSERT [dbo].[UniversityType] OFF
ALTER TABLE [dbo].[CarrersUniversity]  WITH CHECK ADD FOREIGN KEY([CityId])
REFERENCES [dbo].[Cities] ([Id])
GO
ALTER TABLE [dbo].[CarrersUniversity]  WITH CHECK ADD FOREIGN KEY([UniversityId])
REFERENCES [dbo].[University] ([Id])
GO
ALTER TABLE [dbo].[Cities]  WITH CHECK ADD FOREIGN KEY([DeaprtamentId])
REFERENCES [dbo].[Departaments] ([Id])
GO
ALTER TABLE [dbo].[Departaments]  WITH CHECK ADD FOREIGN KEY([CountyId])
REFERENCES [dbo].[Countries] ([Id])
GO
ALTER TABLE [dbo].[Persons]  WITH CHECK ADD FOREIGN KEY([CityId])
REFERENCES [dbo].[Cities] ([Id])
GO
ALTER TABLE [dbo].[RolesUser]  WITH CHECK ADD FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
GO
ALTER TABLE [dbo].[RolesUser]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[University]  WITH CHECK ADD FOREIGN KEY([TypeId])
REFERENCES [dbo].[UniversityType] ([Id])
GO
