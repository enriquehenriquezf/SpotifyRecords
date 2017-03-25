USE [spotifydb]
GO
INSERT [dbo].[Albums] ([Album], [Año], [Artista], [ImageUrl], [RankTotal]) VALUES (N'1989', 2014, N'Taylor Swift', N'https://upload.wikimedia.org/wikipedia/en/f/f6/Taylor_Swift_-_1989.png', 4)
INSERT [dbo].[Albums] ([Album], [Año], [Artista], [ImageUrl], [RankTotal]) VALUES (N'Bad', 1987, N'Michael Jackson', N'https://upload.wikimedia.org/wikipedia/en/5/51/Michael_Jackson_-_Bad.png', 0)
INSERT [dbo].[Albums] ([Album], [Año], [Artista], [ImageUrl], [RankTotal]) VALUES (N'Brindo con el alma', 1986, N'Diomedes Diaz', N'https://i.ytimg.com/vi/MiYzSpk2Y0c/maxresdefault.jpg', 4)
INSERT [dbo].[Albums] ([Album], [Año], [Artista], [ImageUrl], [RankTotal]) VALUES (N'Cien Dias De Bohemia', 2005, N'Los Hermanos Zuleta', N'hhttps://lastfm-img2.akamaized.net/i/u/300x300/7fee873c2d6644738766d5f530bfc2b2.png', 0)
INSERT [dbo].[Albums] ([Album], [Año], [Artista], [ImageUrl], [RankTotal]) VALUES (N'El papá de lo comercial', 2016, N'Twister', N'http://s.mxmcdn.net/images-storage/albums/5/9/1/6/7/6/30676195_500_500.jpg', 3)
INSERT [dbo].[Albums] ([Album], [Año], [Artista], [ImageUrl], [RankTotal]) VALUES (N'Equilibrio', 2014, N'Santiago Cruz', N'http://vipestereo.com/inicio/wp-content/uploads/2015/05/Santiago-Cruz-Equilibrio.jpg', 2)
INSERT [dbo].[Albums] ([Album], [Año], [Artista], [ImageUrl], [RankTotal]) VALUES (N'Frozen Original Motion Picture Soundtrack', 2013, N'Various artists', N'https://lumiere-a.akamaihd.net/v1/images/open-uri20150422-20810-1n258vh_16b93145.jpeg', 0)
INSERT [dbo].[Albums] ([Album], [Año], [Artista], [ImageUrl], [RankTotal]) VALUES (N'Mas Grande Que Nunca', 1989, N'Frankie Ruiz', N'http://s.istarkaraoke.com/uploads/albumCovers/2/2/0a2ae5049ee9af26164831c4969f7b20.png', 0)
INSERT [dbo].[Albums] ([Album], [Año], [Artista], [ImageUrl], [RankTotal]) VALUES (N'Night Visions', 2013, N'Imagine Dragons', N'https://i.ytimg.com/vi/LqI78S14Wgg/maxresdefault.jpg', 4.5)
INSERT [dbo].[Albums] ([Album], [Año], [Artista], [ImageUrl], [RankTotal]) VALUES (N'Speak Now', 2012, N'Taylor Swift', N'http://www.dafont.com/forum/attach/orig/2/0/20714.jpg', 3)
INSERT [dbo].[Albums] ([Album], [Año], [Artista], [ImageUrl], [RankTotal]) VALUES (N'Título de amor', 1993, N'Diomedes Diaz', N'https://i.ytimg.com/vi/CSCS15GfUDo/hqdefault.jpg', 5)
INSERT [dbo].[Albums] ([Album], [Año], [Artista], [ImageUrl], [RankTotal]) VALUES (N'Un Alto En El Camino', 1993, N'Grupo Niche', N'http://imgur.com/a/l5XE0', 0)
INSERT [dbo].[Artistas] ([Artista], [ImageUrl]) VALUES (N'Diomedes Diaz', NULL)
INSERT [dbo].[Artistas] ([Artista], [ImageUrl]) VALUES (N'Don Omar', N'')
INSERT [dbo].[Artistas] ([Artista], [ImageUrl]) VALUES (N'Farid Ortiz', NULL)
INSERT [dbo].[Artistas] ([Artista], [ImageUrl]) VALUES (N'Frankie Ruiz', NULL)
INSERT [dbo].[Artistas] ([Artista], [ImageUrl]) VALUES (N'Grupo Niche', NULL)
INSERT [dbo].[Artistas] ([Artista], [ImageUrl]) VALUES (N'Imagine Dragons', NULL)
INSERT [dbo].[Artistas] ([Artista], [ImageUrl]) VALUES (N'Ivan Villazon', N'')
INSERT [dbo].[Artistas] ([Artista], [ImageUrl]) VALUES (N'Joe Arroyo', NULL)
INSERT [dbo].[Artistas] ([Artista], [ImageUrl]) VALUES (N'Los Hermanos Zuleta', NULL)
INSERT [dbo].[Artistas] ([Artista], [ImageUrl]) VALUES (N'Michael Jackson', NULL)
INSERT [dbo].[Artistas] ([Artista], [ImageUrl]) VALUES (N'Mr Black', NULL)
INSERT [dbo].[Artistas] ([Artista], [ImageUrl]) VALUES (N'Nicky Jam', NULL)
INSERT [dbo].[Artistas] ([Artista], [ImageUrl]) VALUES (N'Ñejo', N'')
INSERT [dbo].[Artistas] ([Artista], [ImageUrl]) VALUES (N'Poncho Zuleta', N'')
INSERT [dbo].[Artistas] ([Artista], [ImageUrl]) VALUES (N'Santiago Cruz', NULL)
INSERT [dbo].[Artistas] ([Artista], [ImageUrl]) VALUES (N'Sergio Vargas', NULL)
INSERT [dbo].[Artistas] ([Artista], [ImageUrl]) VALUES (N'Silvestre Dangond', N'')
INSERT [dbo].[Artistas] ([Artista], [ImageUrl]) VALUES (N'Taylor Swift', NULL)
INSERT [dbo].[Artistas] ([Artista], [ImageUrl]) VALUES (N'Twister', N'')
INSERT [dbo].[Artistas] ([Artista], [ImageUrl]) VALUES (N'Various artists', NULL)
INSERT [dbo].[Canciones] ([Artista], [Album], [Cancion], [Genero], [Compositor], [Colaboradores], [Link], [ImageUrl]) VALUES (N'Diomedes Diaz', N'Brindo con el alma', N'Sin medir distancia', N'Vallenato', N'Gustavo Gutiérrez Cabello', N'"El Cocha" molina', N'http://mus4.foxmusica.net/mp3/bd19c93b-e1d8-4a89-af31-4eef091ec40c.mp3', N'https://i.ytimg.com/vi/NwIfH5c4AKk/hqdefault.jpg')
INSERT [dbo].[Canciones] ([Artista], [Album], [Cancion], [Genero], [Compositor], [Colaboradores], [Link], [ImageUrl]) VALUES (N'Diomedes Diaz', N'Título de amor', N'Dejala', N'Vallenato', N'Juan Humberto Rois', N'Juancho Rois', N'http://mus4.foxmusica.net/mp3/281f8f18-4954-4cb9-9aaa-a1751719da62.mp3', N'http://img.youtube.com/vi/BWrVw7V93S0/hqdefault.jpg')
INSERT [dbo].[Canciones] ([Artista], [Album], [Cancion], [Genero], [Compositor], [Colaboradores], [Link], [ImageUrl]) VALUES (N'Diomedes Diaz', N'Título de amor', N'Mi primera cana', N'Vallenato', N'Diomedes Diaz', N'Juancho Rois', N'http://mus4.foxmusica.net/mp3/5c8e86e2-409b-4dd1-87c2-677b67a1ae9c.mp3', N'https://i.ytimg.com/vi/NwIfH5c4AKk/hqdefault.jpg')
INSERT [dbo].[Canciones] ([Artista], [Album], [Cancion], [Genero], [Compositor], [Colaboradores], [Link], [ImageUrl]) VALUES (N'Frankie Ruiz', N'Mas Grande Que Nunca', N'Tu eres', N'Salsa,Latina', N'Chein Garcia', NULL, NULL, NULL)
INSERT [dbo].[Canciones] ([Artista], [Album], [Cancion], [Genero], [Compositor], [Colaboradores], [Link], [ImageUrl]) VALUES (N'Grupo Niche', N'Un Alto En El Camino', N'Duele Mas', N'Salsa,Latina', N'Jairo Varela', NULL, NULL, NULL)
INSERT [dbo].[Canciones] ([Artista], [Album], [Cancion], [Genero], [Compositor], [Colaboradores], [Link], [ImageUrl]) VALUES (N'Imagine Dragons', N'Night Visions', N'Demons', N'Rock', N'Ben Mackee', NULL, N'http://mus1.foxmusica.net/mp3/7b1c6a0f-dcf8-40ca-851d-fe3082b2754c.mp3', N'https://f4.bcbits.com/img/a3166799205_10.jpg')
INSERT [dbo].[Canciones] ([Artista], [Album], [Cancion], [Genero], [Compositor], [Colaboradores], [Link], [ImageUrl]) VALUES (N'Michael Jackson', N'Bad', N'Smooth Criminal', N'Funk,Dance Pop', N'Michael Jackson', NULL, NULL, NULL)
INSERT [dbo].[Canciones] ([Artista], [Album], [Cancion], [Genero], [Compositor], [Colaboradores], [Link], [ImageUrl]) VALUES (N'Santiago Cruz', N'Equilibrio', N'Cómo haces', N'Latina', N'Gisela Renes, Sergio Leon', NULL, N'https://drive.google.com/uc?export=download&id=0Bw9ncWyGvWYpb3VzQVMybnBlekU', N'https://cdn.smehost.net/musicaencomuncom-esprod/wp-content/uploads/2015/09/santiago-cruz_0_0.jpg')
INSERT [dbo].[Canciones] ([Artista], [Album], [Cancion], [Genero], [Compositor], [Colaboradores], [Link], [ImageUrl]) VALUES (N'Taylor Swift', N'1989', N'Shake it off', N'Pop', N'Taylor Swift', NULL, N'http://dl.mp3xd.eu/xd/gpZ+KaoaqmuS24/taylor-swift-shake-it-off.mp3', N'https://tuneuplyrics.files.wordpress.com/2014/10/taylor-swift-shakeitoff.png')
INSERT [dbo].[Canciones] ([Artista], [Album], [Cancion], [Genero], [Compositor], [Colaboradores], [Link], [ImageUrl]) VALUES (N'Taylor Swift', N'Speak Now', N'Sparks Fly', N'Country', N'Nathan Chapman', NULL, N'http://dl.mp3xd.eu/xd/Wiqap6Zlxy24/spark-fly-by-taylor.mp3', N'https://upload.wikimedia.org/wikipedia/en/9/91/Sparks_Fly_-_Single.png')
INSERT [dbo].[Canciones] ([Artista], [Album], [Cancion], [Genero], [Compositor], [Colaboradores], [Link], [ImageUrl]) VALUES (N'Twister', N'El papá de lo comercial', N'Cantinero', N'Champeta Urbana', N'Twister', N'', N'http://deepmp3.net/yt-lv/file/zUzNozvYL30.m4a', N'http://www.flowcartagena.net/wp-content/uploads/2014/04/tWISTER-eL-rEY.jpg')
INSERT [dbo].[Canciones] ([Artista], [Album], [Cancion], [Genero], [Compositor], [Colaboradores], [Link], [ImageUrl]) VALUES (N'Various artists', N'Frozen Original Motion Picture Soundtrack', N'Let it go', N'Pop', N'Christophe Beck', N'Idina Menzel', N'http://s.tunespk.cx/mp3dj/dj-flex-frozen-let-it-go-feat-dj-taj/s186852533.mp3', N'https://marandarussell.files.wordpress.com/2014/04/0.jpg')
INSERT [dbo].[Canciones] ([Artista], [Album], [Cancion], [Genero], [Compositor], [Colaboradores], [Link], [ImageUrl]) VALUES (N'Various artists', N'Frozen Original Motion Picture Soundtrack', N'Love is an open door', N'Pop', N'Christophe Beck', N'Santino Fontana, Kristen Bell', N'http://s.tunespk.cx/mp3dj/love-is-an-open-door-frozen/s133637909.mp3', N'https://img1.etsystatic.com/033/0/6556342/il_340x270.536870969_lweb.jpg')
INSERT [dbo].[Login] ([UserName], [Password], [UserLevel]) VALUES (N'admin', N'12345', 10)
INSERT [dbo].[Login] ([UserName], [Password], [UserLevel]) VALUES (N'kike', N'3427123', 9)
INSERT [dbo].[Login] ([UserName], [Password], [UserLevel]) VALUES (N'prueba', N'1234prueba', 1)
INSERT [dbo].[Ranks] ([Rank], [Album], [UserRated]) VALUES (4, N'1989', N'admin')
INSERT [dbo].[Ranks] ([Rank], [Album], [UserRated]) VALUES (3, N'Bad', N'admin')
INSERT [dbo].[Ranks] ([Rank], [Album], [UserRated]) VALUES (4, N'Brindo con el alma', N'admin')
INSERT [dbo].[Ranks] ([Rank], [Album], [UserRated]) VALUES (3, N'Brindo con el alma', N'kike')
INSERT [dbo].[Ranks] ([Rank], [Album], [UserRated]) VALUES (5, N'Brindo con el alma', N'prueba')
INSERT [dbo].[Ranks] ([Rank], [Album], [UserRated]) VALUES (3, N'El papá de lo comercial', N'admin')
INSERT [dbo].[Ranks] ([Rank], [Album], [UserRated]) VALUES (2, N'Equilibrio', N'admin')
INSERT [dbo].[Ranks] ([Rank], [Album], [UserRated]) VALUES (5, N'Night Visions', N'admin')
INSERT [dbo].[Ranks] ([Rank], [Album], [UserRated]) VALUES (4, N'Night Visions', N'kike')
INSERT [dbo].[Ranks] ([Rank], [Album], [UserRated]) VALUES (3, N'Speak Now', N'admin')
INSERT [dbo].[Ranks] ([Rank], [Album], [UserRated]) VALUES (5, N'Título de amor', N'kike')
INSERT [dbo].[Usuarios] ([Documento], [Nombre], [Apellido], [UserName]) VALUES (N'1140872201', N'Enrique', N'Henriquez', N'kike')
INSERT [dbo].[Usuarios] ([Documento], [Nombre], [Apellido], [UserName]) VALUES (N'12345', N'Admin', N'Istrador', N'admin')
INSERT [dbo].[Usuarios] ([Documento], [Nombre], [Apellido], [UserName]) VALUES (N'123456', N'Prueba', N'Prueba', N'prueba')
