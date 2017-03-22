using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Spotify
{
    public partial class AdminPanel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_InsertArtista_Click(object sender, EventArgs e)
        {
            // IF NOT EXISTS (SELECT * FROM Artistas WHERE Artistas.Artista='') INSERT INTO Artistas VALUES ('','')
        }

        protected void btn_InsertarAlbum_Click(object sender, EventArgs e)
        {
            // if exists (select * from Artistas where Artistas.Artista = 'Taylor Swift') insert into Albums values('','','','','')
        }

        protected void btn_InsertarCancion_Click(object sender, EventArgs e)
        {
            // if exists (select * from Artistas,Albums where Artistas.Artista = '' and Albums.Album = '' and Albums.Artista = Artistas.Artista) insert into Canciones values('','','','','','','','')
        }

        protected void btn_EliminarArtista_Click(object sender, EventArgs e)
        {
            // if exists (select * from Artistas where Artistas.Artista = 'ArtistName' ) delete  from Albums where Albums.Artista = 'ArtistName' delete from Artistas where Artistas.Artista = 'ArtistName'
        }

        protected void btn_EliminarAlbum_Click(object sender, EventArgs e)
        {
            // if exists (select * from Albums where Albums.Album = 'AlbumName' ) delete  from Albums where Albums.Album = 'AlbumName' delete from Canciones where Canciones.Album = 'AlbumName'
        }
    }
}