using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace METWebsite
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void LoginInstructor_Click(object sender, EventArgs e)
        {
            string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["MET"].ConnectionString;
            //create new sqlconnection and connection to database by using connection string from web.config file  
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            String emailInput = username.Text;
            String pass = password.Text;

            SqlCommand UsersCred = new SqlCommand("select email,password,id from Users", con);
            SqlDataReader reader = UsersCred.ExecuteReader();
            while (reader.Read())
            {
                String email = reader.GetValue(0).ToString();
                if (email == emailInput)
                {
                    String password = reader.GetValue(1).ToString();

                    if (password== pass)
                    {
                        Session["id"] = reader.GetValue(2);
                        Response.Redirect("InstructorHome.aspx");

                    }
                }
            }
            reader.Close();
            con.Close();

        }
    }
}