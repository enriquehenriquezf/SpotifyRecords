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
        public string username;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            TipoBusqueda = ListBusqueda.SelectedIndex;
            admin = (Boolean)(Session["admin"]);
            if (admin == true) 
            {
                btnAdministrar.Visible = true;
            }
            username = (String)Session["UserName"];
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
                Boolean con2 = false;
                if (TipoBusqueda == 0) // canciones
                {
                    sqlCommand.CommandText = "SELECT Canciones.* FROM Canciones WHERE Canciones.Cancion LIKE '%" + txt_Busqueda.Text + "%'";
                }
                else if (TipoBusqueda == 1)// Artistas
                {
                    sqlCommand.CommandText = "SELECT Canciones.* FROM Canciones WHERE Canciones.Artista LIKE '%" + txt_Busqueda.Text + "%'";
                    con2 = true;
                }
                else if (TipoBusqueda == 2) // Albunes y Artistas
                {
                    sqlCommand.CommandText = "SELECT Canciones.Artista,Canciones.Album,Canciones.Cancion,Canciones.Genero,Canciones.Compositor,Canciones.Colaboradores,Canciones.Link,Canciones.ImageUrl,Albums.Año FROM Canciones,Albums WHERE Albums.Album = Canciones.Album AND Albums.Album LIKE '%" + txt_Busqueda.Text + "%' AND Canciones.Artista LIKE '%" + txt_Busqueda2.Text + "%'";
                }
                sqlDA = new SqlDataAdapter(sqlCommand);
                sqlDA.Fill(dt);
                SqlDataReader reader = sqlCommand.ExecuteReader();
                sqlConn.Close();
                ListView1.Visible = false;
                ListView3.Visible = false;
                ListView2.Visible = true;
                ListView2.DataSource = dt;
                ListView2.DataBind();
                if (ListView2.Items.Count == 0 && con2 == false)
                {
                    Response.Write("<script>alert('No se encontraron Canciones con este criterio de Busqueda!');</script>");
                }
                if (con2 == true) 
                {
                    DataTable dt2 = new DataTable();
                    SqlConnection sqlConn2 = new SqlConnection(connStr);
                    SqlCommand sqlCommand2;
                    SqlDataAdapter sqlDA2;
                    sqlConn2.Open();
                    sqlCommand2 = sqlConn2.CreateCommand();
                    sqlCommand2.CommandText = "SELECT Albums.* FROM Albums WHERE Albums.Artista LIKE '%" + txt_Busqueda.Text + "%'";
                    sqlDA2 = new SqlDataAdapter(sqlCommand2);
                    sqlDA2.Fill(dt2);
                    sqlConn2.Close();
                    ListView3.Visible = true;
                    ListView3.DataSource = dt2;
                    ListView3.DataBind();
                    if (ListView3.Items.Count == 0 && ListView2.Items.Count == 0)
                    {
                        Response.Write("<script>alert('No se encontraron Álbums y/o Canciones con base al Artista buscado!');</script>");
                    }
                    else if (ListView3.Items.Count == 0)
                    {
                        Response.Write("<script>alert('No se encontraron Álbums con base al Artista buscado!');</script>");
                    }
                    else if (ListView2.Items.Count == 0)
                    {
                        Response.Write("<script>alert('No se encontraron Canciones con base al Artista buscado!');</script>");
                    }
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
        }

        protected void btnAdministrar_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminPanel.aspx");
        }
    }
}