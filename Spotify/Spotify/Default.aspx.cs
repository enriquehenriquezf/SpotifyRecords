using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Spotify
{
    public partial class Default : System.Web.UI.Page
    {
        int TipoBusqueda;
        ConnectionStringSettings connStrSett;
        string connStr;
        public Boolean admin;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            TipoBusqueda = ListBusqueda.SelectedIndex;
            admin = (Boolean)(Session["admin"]);
            if (admin == true) 
            {
                btnAdministrar.Visible = true;
            }
            connStrSett = ConfigurationManager.ConnectionStrings["spotifydbConnectionString"];
            connStr = connStrSett.ConnectionString;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {// Buscar
            try
            {
                DataTable dt = new DataTable();
                SqlConnection sqlConn = new SqlConnection(connStr);
                SqlCommand sqlCommand;
                SqlDataAdapter sqlDA;
                sqlConn.Open();
                sqlCommand = sqlConn.CreateCommand();

                if (TipoBusqueda == 0) // canciones
                {
                    sqlCommand.CommandText = "SELECT Canciones.* FROM Canciones WHERE Canciones.Cancion LIKE '%" + txt_Busqueda.Text + "%'";
                }
                else if (TipoBusqueda == 1)// Artistas
                {
                    sqlCommand.CommandText = "SELECT Albums.* FROM Albums WHERE Albums.Artista LIKE '%" + txt_Busqueda.Text + "%';SELECT Canciones.* FROM Canciones WHERE Canciones.Artista LIKE '%" + txt_Busqueda.Text + "%'";
                }
                else if (TipoBusqueda == 2) // Albunes y Artistas
                {
                    sqlCommand.CommandText = "SELECT Canciones.Cancion,Canciones.Compositor,Albums.Año,Albums.Artista,Canciones.Genero FROM Canciones,Albums WHERE Albums.Album = Canciones.Album AND Albums.Album LIKE '%" + txt_Busqueda.Text + "' AND Canciones.Cancion LIKE '%" + txt_Busqueda2.Text + "%'";
                }
                sqlDA = new SqlDataAdapter(sqlCommand);
                sqlDA.Fill(dt);
                sqlConn.Close();
                ListView1.Visible = false;
                ListView2.Visible = true;
                ListView2.DataSource = dt;
                ListView2.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void ListBusqueda_SelectedIndexChanged(object sender, EventArgs e)
        {
            TipoBusqueda = ListBusqueda.SelectedIndex;
            if (TipoBusqueda == 2) { txt_Busqueda2.Enabled = true; }
            else { txt_Busqueda2.Enabled = false; }
        }

        protected void btnAdministrar_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminPanel.aspx");
        }

    }
}