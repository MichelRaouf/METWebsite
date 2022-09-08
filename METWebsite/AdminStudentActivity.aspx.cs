
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;


namespace METWebsite
{
   
    public partial class AdminStudentActivity : System.Web.UI.Page
    {
        public static int count = 0;
        public static ArrayList boxes=new ArrayList();
        protected void Page_Load(object sender, EventArgs e)
        {
            for(int i = 0; i < boxes.Count; i++)
            {
                hidden.Controls.Add((Control)boxes.ToArray().ElementAt(i));
            }
        }

        protected void addStudentActivity(object sender, EventArgs e)
        {
           
            string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["MET"].ConnectionString;
            //create new sqlconnection and connection to database by using connection string from web.config file  
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("addStudentActivity", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            String titleClub = title.Value.ToString();
            String typeClub = type.Value.ToString();
            String aboutClub = about.Value.ToString();
            String facebookLinkClub = facebook.Value.ToString();
            String instagramLinkClub = instagram.Value.ToString();

            cmd.Parameters.Add(new SqlParameter("@title", titleClub));
            cmd.Parameters.Add(new SqlParameter("@type", typeClub));
            cmd.Parameters.Add(new SqlParameter("@about", aboutClub));
            cmd.Parameters.Add(new SqlParameter("@facebook", facebookLinkClub));
            cmd.Parameters.Add(new SqlParameter("@instagram", instagramLinkClub));
            

            if (color1.Attributes["ok"]!="" || color1.Style["width"] == "25px"){
                cmd.Parameters.Add(new SqlParameter("@gradient", "linear-gradient(to right,rgba(0, 0, 0, 1),rgba(237, 28, 36, 0.9))"));
            }
            else if (color2.Attributes["ok"] != "" || color2.Style["width"] == "25px")
            {
                cmd.Parameters.Add(new SqlParameter("@gradient", "linear-gradient(to left,rgba(22, 160, 93, 1),rgba(79, 141, 245, 1),rgba(22, 160, 93, 1))"));
            }
            else if (color3.Attributes["ok"] != "" || color3.Style["width"] == "25px")
            {
                cmd.Parameters.Add(new SqlParameter("@gradient", "linear-gradient(to left,rgba(10, 71, 152, 0.5),rgba(10, 71, 152, 1))"));
            }
            else if (color4.Attributes["ok"] != "" || color4.Style["width"] == "25px")
            {
                cmd.Parameters.Add(new SqlParameter("@gradient", "linear-gradient(to right,RGBA(27,51,124,100),RGBA(237,28,36,90))"));
            }
            else if (color5.Attributes["ok"] != "" || color5.Style["width"] == "25px")
            {
                cmd.Parameters.Add(new SqlParameter("@gradient", "linear-gradient(to right,rgba(51, 102, 187, 1),rgba(51, 102, 187, 1),rgba(37, 175, 68, 1))"));
            }
            
            cmd.ExecuteNonQuery();
            
            con.Close();
            


            

            //foreach (TextBox c in hidden.Controls)
            //{
            //    Response.Write(c.Text);
                
            //    SqlCommand cmd2 = new SqlCommand("addTrackToStudentActivity", con);
            //    cmd2.CommandType = System.Data.CommandType.StoredProcedure;
            //    if (c.Text !="" )
            //    {
            //        con.Open();
            //        cmd2.Parameters.Add(new SqlParameter("@track", c.Text));
            //        cmd2.ExecuteNonQuery();
            //        con.Close();
            //    }
            //}

            
        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            
                TextBox t1 = new TextBox();
                
                t1.Attributes.Add("type", "text");
                t1.Attributes.Add("class", "input");

                


                t1.Attributes.Add("runat", "server");
              boxes.Add(t1);
               hidden.Controls.Add(t1);
           
            

        }
    }

}