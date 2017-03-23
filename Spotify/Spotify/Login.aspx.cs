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
    public partial class Login : System.Web.UI.Page
    {
        ConnectionStringSettings connStrSett;
        string connStr;
        public Boolean admin;

        protected void Page_Load(object sender, EventArgs e)
        {
            connStrSett = ConfigurationManager.ConnectionStrings["spotifydbConnectionString"];
            connStr = connStrSett.ConnectionString;
        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            try
            {
                //DataTable dt = new DataTable();
                SqlConnection sqlConn = new SqlConnection(connStr);
                SqlCommand sqlCommand;
                //SqlDataAdapter sqlDA;
                sqlConn.Open();
                sqlCommand = sqlConn.CreateCommand();
                sqlCommand.CommandText = "SELECT Login.* FROM Login WHERE Login.UserName='" + Login1.UserName + "' AND Login.Password='" + Login1.Password + "'";
                //sqlDA = new SqlDataAdapter(sqlCommand);
                //sqlDA.Fill(dt);
                SqlDataReader reader = sqlCommand.ExecuteReader();
                if (reader.Read()) 
                {
                    if (reader[0].Equals(Login1.UserName) && reader[1].Equals(Login1.Password))
                    {
                        if (reader[2].Equals("10") || reader[2].Equals(10))
                        {
                            admin = true;
                        }
                        else 
                        {
                            admin = false;
                        }
                        e.Authenticated = true;
                    }
                    else 
                    {
                        Response.Write("<script>alert('El nombre de usuario y/o contraseña son incorrectos');</script>");
                        e.Authenticated = false;
                    }
                }
                sqlConn.Close();
                Session["admin"] = admin;
                //dataGridView2.DataSource = dt;
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}