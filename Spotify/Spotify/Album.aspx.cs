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
        string album;
        string username;
        protected void Page_Load(object sender, EventArgs e)
        {
            connStrSett = ConfigurationManager.ConnectionStrings["spotifydbConnectionString"];
            connStr = connStrSett.ConnectionString;

            username = (String)Session["UserName"];

            HttpContext c = HttpContext.Current;
            album = c.Request["Album"];
            try
            {
                DataTable dt = new DataTable();
                SqlConnection sqlConn = new SqlConnection(connStr);
                SqlCommand sqlCommand;
                SqlDataAdapter sqlDA;
                sqlConn.Open();
                sqlCommand = sqlConn.CreateCommand();
                sqlCommand.CommandText = "SELECT Artista, Cancion, Genero, Compositor, Colaboradores, Link FROM Canciones WHERE Canciones.Album='" + album + "'";
                sqlDA = new SqlDataAdapter(sqlCommand);
                sqlDA.Fill(dt);
                sqlConn.Close();
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void btn_Votar_Click(object sender, EventArgs e)
        {
            int score = Rating2.CurrentRating;
            float RankTotal = 0;
            try
            {
                SqlConnection sqlConn = new SqlConnection(connStr);
                SqlCommand sqlCommand;
                sqlConn.Open();
                sqlCommand = sqlConn.CreateCommand();
                sqlCommand.CommandText = "USE spotifydb IF NOT EXISTS (SELECT * FROM Ranks WHERE Ranks.Album='" + album + "' AND Ranks.UserRated='" + username + "') INSERT INTO Ranks VALUES ('" + score + "','" + album + "','" + username + "') SELECT AVG(Ranks.Rank) as total FROM Ranks WHERE Ranks.Album='" + album + "'";
                SqlDataReader reader = sqlCommand.ExecuteReader();
                while (reader.Read()) { RankTotal = reader.GetFloat(0); }
                //int Successfully = sqlCommand.ExecuteNonQuery();
                sqlConn.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            try
            {
                if(RankTotal != 0){
                    SqlConnection sqlConn2 = new SqlConnection(connStr);
                    SqlCommand sqlCommand2;
                    sqlConn2.Open();
                    sqlCommand2 = sqlConn2.CreateCommand();
                    sqlCommand2.CommandText = "USE spotifydb UPDATE Albums SET RankTotal='" + RankTotal + "' WHERE Albums.Album='" + album + "'";
                    int Successfully = sqlCommand2.ExecuteNonQuery();
                    sqlConn2.Close();
                    if (Successfully != 0)
                    {
                        Response.Write("<script>alert('Voto Realizado Con Exito!');</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('Ya Votaste por este Album!');</script>");
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}