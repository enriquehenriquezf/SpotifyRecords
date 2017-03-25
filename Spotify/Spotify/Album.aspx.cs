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
    public partial class Album : System.Web.UI.Page
    {
        ConnectionStringSettings connStrSett;
        string connStr;
        protected void Page_Load(object sender, EventArgs e)
        {
            connStrSett = ConfigurationManager.ConnectionStrings["spotifydbConnectionString"];
            connStr = connStrSett.ConnectionString;
        }

        protected void btn_Votar_Click(object sender, EventArgs e)
        {

        }

        public void RaisePostBackEvent(string eventArgument) 
        {
            DataTable dt = new DataTable();
            SqlConnection sqlConn = new SqlConnection(connStr);
            SqlCommand sqlCommand;
            SqlDataAdapter sqlDA;
            sqlConn.Open();
            sqlCommand = sqlConn.CreateCommand();
            sqlCommand.CommandText = "SELECT Artista, Cancion, Genero, Compositor, Colaboradores, Link FROM Canciones WHERE Canciones.Album='" + eventArgument + "'";
            sqlDA = new SqlDataAdapter(sqlCommand);
            sqlDA.Fill(dt);
            sqlConn.Close();
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        protected void Page_LoadComplete(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            SqlConnection sqlConn = new SqlConnection(connStr);
            SqlCommand sqlCommand;
            SqlDataAdapter sqlDA;
            sqlConn.Open();
            sqlCommand = sqlConn.CreateCommand();
            sqlCommand.CommandText = "SELECT Artista, Cancion, Genero, Compositor, Colaboradores, Link FROM Canciones WHERE Canciones.Album='"+lbl_Album.Text+"'";
            sqlDA = new SqlDataAdapter(sqlCommand);
            sqlDA.Fill(dt);
            sqlConn.Close();
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}