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
            String emailInput = username.Value;
            String pass = password.Value;

            SqlCommand UsersCred = new SqlCommand("select email,password,id,roles from Users", con);
            SqlDataReader reader = UsersCred.ExecuteReader();
            password.Attributes.Add("style", "border-color : black;");
            username.Attributes.Add("style", "border-color : black;");
            wrongPass.Attributes.Add("style", "display : none");
            wrongEmail.Attributes.Add("style", "display : none");

            Boolean flag = false;
            while (reader.Read())
            {
                String email = reader.GetValue(0).ToString();
                String role = reader.GetValue(3).ToString().ToLower();
                if (email == emailInput && role !="previous")
                {
                    flag = true;
                    String passwordInput = reader.GetValue(1).ToString();

                    if (passwordInput== pass)
                    {
                        Session["id"] = reader.GetValue(2);
                        if(role=="active")
                        Response.Redirect("InstructorHome.aspx");
                        else
                        {
                            Response.Redirect("Register.aspx");

                        }

                    }
                    else
                    {
                        password.Attributes.Add("style", "border-color : red;");
                        wrongPass.Attributes.Add("style", "display : block");
                    }
                }
            }
            if (!flag)
            {
                username.Attributes.Add("style", "border-color : red;");
                wrongEmail.Attributes.Add("style", "display : block");


            }

            reader.Close();
            con.Close();

        }
        
    }
    


}