
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
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
            ////for (int i = 0; i < boxes.Count; i++)
            ////{
            ////    hidden.Controls.Add((Control)boxes.ToArray().ElementAt(i));
            ////}
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

            if (Hidden1.Value == "1" ){
                cmd.Parameters.Add(new SqlParameter("@gradient", "linear-gradient(to right,rgba(0, 0, 0, 1),rgba(237, 28, 36, 0.9))"));
            }
            else if (Hidden2.Value == "1" )
            {
                cmd.Parameters.Add(new SqlParameter("@gradient", "linear-gradient(to left,rgba(22, 160, 93, 1),rgba(79, 141, 245, 1),rgba(22, 160, 93, 1))"));
            }
            else if (Hidden3.Value == "1" )
            {
                cmd.Parameters.Add(new SqlParameter("@gradient", "linear-gradient(to left,rgba(10, 71, 152, 0.5),rgba(10, 71, 152, 1))"));
            }
            else if (Hidden4.Value == "1" )
            {
                cmd.Parameters.Add(new SqlParameter("@gradient", "linear-gradient(to right,RGBA(27,51,124,100),RGBA(237,28,36,90))"));
            }
            else if (Hidden5.Value == "1" )
            {
                cmd.Parameters.Add(new SqlParameter("@gradient", "linear-gradient(to right,rgba(51, 102, 187, 1),rgba(51, 102, 187, 1),rgba(37, 175, 68, 1))"));
            }
            
            cmd.ExecuteNonQuery();
            con.Close();

            SqlCommand cmd2 = new SqlCommand("addTrackToStudentActivity", con);
            cmd2.CommandType = System.Data.CommandType.StoredProcedure;
            con.Open();

            if(TextTrack1.Value.ToString()!=null)
                cmd2.Parameters.Add(new SqlParameter("@track", TextTrack1.Value.ToString()));

            else if (TextTrack2.Value.ToString() != null)
                cmd2.Parameters.Add(new SqlParameter("@track", TextTrack2.Value.ToString()));

            else if (TextTrack3.Value.ToString() != null)
                cmd2.Parameters.Add(new SqlParameter("@track", TextTrack3.Value.ToString()));

            else if (TextTrack4.Value.ToString() != null)
                cmd2.Parameters.Add(new SqlParameter("@track", TextTrack4.Value.ToString()));

            else if (TextTrack5.Value.ToString() != null)
                cmd2.Parameters.Add(new SqlParameter("@track", TextTrack5.Value.ToString()));

            cmd2.ExecuteNonQuery();
            con.Close();

            //foreach (TextBox c in hidden.Controls)
            //{
            //    SqlCommand cmd2 = new SqlCommand("addTrackToStudentActivity", con);
            //    cmd2.CommandType = System.Data.CommandType.StoredProcedure;
            //    if (c.Text !="")
            //    {
            //        con.Open();
            //        cmd2.Parameters.Add(new SqlParameter("@track", c.Text));
            //        cmd2.ExecuteNonQuery();
            //        con.Close();
            //    }
            //}

            HttpPostedFile file = Request.Files["fileUpload"];

            //check file was submitted
            if (file != null && file.ContentLength > 0)
            {
                string fname = Path.GetFileName(file.FileName);
                file.SaveAs(Server.MapPath(Path.Combine(@"~/images/stActivitiesPageImages", fname)));
            }

            


        }

        protected void addTextBox(object sender, EventArgs e)
        {
                TextBox t1 = new TextBox();
                t1.Attributes.Add("type", "text");
                t1.Attributes.Add("class", "input");
                t1.Attributes.Add("runat", "server");
                boxes.Add(t1);
               // hidden.Controls.Add(t1);
        }
    }

}