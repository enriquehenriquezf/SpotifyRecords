using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Spotify
{
    public partial class AdminPanel : System.Web.UI.Page
    {
        ConnectionStringSettings connStrSett;
        string connStr;
        protected void Page_Load(object sender, EventArgs e)
        {
            connStrSett = ConfigurationManager.ConnectionStrings["spotifydbConnectionString"];
            connStr = connStrSett.ConnectionString;
        }

        protected void btn_InsertArtista_Click(object sender, EventArgs e)
        {
            try 
            {
                SqlConnection sqlConn = new SqlConnection(connStr);
                SqlCommand sqlCommand;
                sqlConn.Open();
                sqlCommand = sqlConn.CreateCommand();
                sqlCommand.CommandText = "IF NOT EXISTS (SELECT * FROM Artistas WHERE Artistas.Artista='" + txt_artista.Text + "') INSERT INTO Artistas VALUES ('" + txt_artista.Text + "','" + txt_ArtistaUrl.Text + "')";
                //SqlDataReader reader = sqlCommand.ExecuteReader();
                int Successfully = sqlCommand.ExecuteNonQuery();             
                sqlConn.Close();
                if (Successfully != 0)
                {
                    Response.Write("<script>alert('Artista Insertado Con Exito!');</script>");
                }
                else
                {
                    Response.Write("<script>alert('Ya existe este Artista!');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void btn_InsertarAlbum_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection sqlConn = new SqlConnection(connStr);
                SqlCommand sqlCommand;
                sqlConn.Open();
                sqlCommand = sqlConn.CreateCommand();
                sqlCommand.CommandText = "if exists (select * from Artistas where Artistas.Artista = '" + txt_Album_Artista.Text + "') insert into Albums values('" + txt_Album_Name.Text + "','" + txt_Album_Year.Text + "','" + txt_Album_Artista.Text + "','" + txt_Album_URL.Text + "','0')";
                int Successfully = sqlCommand.ExecuteNonQuery();
                sqlConn.Close();
                if (Successfully != 0)
                {
                    Response.Write("<script>alert('Álbum Insertado Con Exito!');</script>");
                }
                else
                {
                    Response.Write("<script>alert('No existe un artista para este Álbum!');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void btn_InsertarCancion_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection sqlConn = new SqlConnection(connStr);
                SqlCommand sqlCommand;
                sqlConn.Open();
                sqlCommand = sqlConn.CreateCommand();
                sqlCommand.CommandText = "if exists (select * from Artistas,Albums where Artistas.Artista = '" + txt_Cancion_Artista.Text + "' and Albums.Album = '" + txt_Cancion_Album.Text + "' and Albums.Artista = Artistas.Artista) insert into Canciones values('" + txt_Cancion_Artista.Text + "','" + txt_Cancion_Album.Text + "','" + txt_Cancion_Name.Text + "','" + txt_Cancion_Genero.Text + "','" + txt_Cancion_Compositor.Text + "','" + txt_Cancion_Colaboradores.Text + "','" + txt_Cancion_Link.Text + "','" + txt_Cancion_ImageURL.Text + "')";
                int Successfully = sqlCommand.ExecuteNonQuery();
                sqlConn.Close();
                if (Successfully != 0)
                {
                    Response.Write("<script>alert('Cancion Insertada con Exito!');</script>");
                }
                else
                {
                    Response.Write("<script>alert('No existe un Artista y/o Álbum para esta Cancion');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void btn_EliminarArtista_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection sqlConn = new SqlConnection(connStr);
                SqlCommand sqlCommand;
                sqlConn.Open();
                sqlCommand = sqlConn.CreateCommand();
                sqlCommand.CommandText = "if exists (select * from Artistas where Artistas.Artista = '" + txt_Eliminar_Artista.Text + "' ) delete  from Albums where Albums.Artista = '" + txt_Eliminar_Artista.Text + "' delete from Artistas where Artistas.Artista = '" + txt_Eliminar_Artista.Text + "' delete from Canciones where Canciones.Artista = '" + txt_Eliminar_Artista.Text + "'";
                int Successfully = sqlCommand.ExecuteNonQuery();
                sqlConn.Close();
                if (Successfully != 0)
                {
                    Response.Write("<script>alert('Artista Eliminado Con Exito!');</script>");
                }
                else
                {
                    Response.Write("<script>alert('No se encontro el Artista');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void btn_EliminarAlbum_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection sqlConn = new SqlConnection(connStr);
                SqlCommand sqlCommand;
                sqlConn.Open();
                sqlCommand = sqlConn.CreateCommand();
                sqlCommand.CommandText = "if exists (select * from Albums where Albums.Album = '" + txt_Eliminar_Album.Text + "' ) delete  from Albums where Albums.Album = '" + txt_Eliminar_Album.Text + "' delete from Canciones where Canciones.Album = '" + txt_Eliminar_Album.Text + "'";
                int Successfully = sqlCommand.ExecuteNonQuery();
                sqlConn.Close();
                if (Successfully != 0)
                {
                    Response.Write("<script>alert('Álbum Eliminado Con Exito!');</script>");
                }
                else
                {
                    Response.Write("<script>alert('No se encontro el Álbum!');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void btn_Home_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}