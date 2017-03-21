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
    public partial class Default : System.Web.UI.Page
    {
        int TipoBusqueda = 0;
        ConnectionStringSettings connStrSett;
        string connStr;
        protected void Page_Load(object sender, EventArgs e)
        {
            connStrSett = ConfigurationManager.ConnectionStrings["spotifydbConnectionString"];
            connStr = connStrSett.ConnectionString;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {// Buscar
            try
            {
                SqlConnection sqlConn = new SqlConnection(connStr);
                SqlCommand sqlCommand;
                sqlConn.Open();
                sqlCommand = sqlConn.CreateCommand();

                if (TipoBusqueda == 0) // canciones
                {
                    sqlCommand.CommandText = "SELECT Canciones.* FROM Canciones WHERE Canciones.Cancion='" + txt_Busqueda.Text + "'";
                }
                else if (TipoBusqueda == 1)// Artistas
                {
                    sqlCommand.CommandText = "SELECT Albums.* FROM Albums WHERE Albums.Artista='" + txt_Busqueda.Text + "';SELECT Canciones.* FROM Canciones WHERE Canciones.Artista='" + txt_Busqueda.Text + "'";
                }
                else if (TipoBusqueda == 2) // Albunes y Artistas
                {
                    sqlCommand.CommandText = "SELECT Albums.* FROM Albums WHERE Albums.Artista='" + txt_Busqueda.Text + "';SELECT Canciones.* FROM Canciones WHERE Canciones.Artista='" + txt_Busqueda.Text + "'";
                }

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void ListBusqueda_SelectedIndexChanged(object sender, EventArgs e)
        {
            TipoBusqueda = ListBusqueda.SelectedIndex;
            if (TipoBusqueda == 2) { txt_Busqueda2.Visible = true; }
            else { txt_Busqueda2.Visible = false; }
        }

    }
}