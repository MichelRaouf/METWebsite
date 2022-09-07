using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace METWebsite
{
    public partial class InstructorViewCourse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            String IdString = Request.QueryString["IdString"];
            int id = 0;
            if(IdString !=null)
             id = Int32.Parse(IdString);
            string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["MET"].ConnectionString;
            //create new sqlconnection and connection to database by using connection string from web.config file  
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand course_title = new SqlCommand("courseTitle", con);
            course_title.CommandType = System.Data.CommandType.StoredProcedure;
            course_title.Parameters.Add(new SqlParameter("@course_id", id));
            SqlParameter title = course_title.Parameters.Add("@course_title", System.Data.SqlDbType.VarChar, 100);
            SqlParameter code = course_title.Parameters.Add("@course_code", System.Data.SqlDbType.VarChar, 100);

            title.Direction = ParameterDirection.Output;
            code.Direction = ParameterDirection.Output;


            con.Open();
            course_title.ExecuteNonQuery();
            con.Close();

            ctitle.InnerHtml = "(" + code.Value.ToString() + ") " + title.Value.ToString();


            SqlCommand course_details = new SqlCommand("coursedetails", con);
            course_details.CommandType = System.Data.CommandType.StoredProcedure;
            course_details.Parameters.Add(new SqlParameter("@course_id", id));
            SqlParameter credits = course_details.Parameters.Add("@course_credits", System.Data.SqlDbType.Int);
            credits.Direction = ParameterDirection.Output;
            SqlParameter lectures = course_details.Parameters.Add("@courseLecs", System.Data.SqlDbType.Int);
            lectures.Direction = ParameterDirection.Output;
            SqlParameter tutorials = course_details.Parameters.Add("@coursetuts", System.Data.SqlDbType.Int);
            tutorials.Direction = ParameterDirection.Output;
            SqlParameter labs = course_details.Parameters.Add("@courseLabs", System.Data.SqlDbType.Int);
            labs.Direction = ParameterDirection.Output;

            con.Open();
            course_details.ExecuteNonQuery();
            con.Close();

            ccredits.InnerHtml = "&nbsp;&nbsp;" + credits.Value.ToString() + " Credits Hours";
            clecs.InnerHtml = "&nbsp;&nbsp;" + lectures.Value.ToString() + " Lectures";
            ctuts.InnerHtml = "&nbsp;&nbsp;" + tutorials.Value.ToString() + " Tutorials";
            clabs.InnerHtml = "&nbsp;&nbsp;" + labs.Value.ToString() + " Labs";

            SqlCommand course_updates = new SqlCommand("courseUpdates", con);
            course_updates.CommandType = System.Data.CommandType.StoredProcedure;
            course_updates.Parameters.Add(new SqlParameter("@course_id", 2));

            con.Open();
            course_updates.ExecuteNonQuery();

            SqlDataReader reader = course_updates.ExecuteReader();
            while (reader.Read())
            {
                var tr = new HtmlTableRow();
                var td1 = new HtmlTableCell();
                var td2 = new HtmlTableCell();
                var td3 = new HtmlTableCell();
                td1.InnerHtml += "<li>" + reader.GetValue(0).ToString() + "</li>";

                var Editbutton = new Button { Text = "View Course", CssClass = "viewCourse" };
                Editbutton.Click += (object sender1, EventArgs e1) => {
                    //Response.Redirect("InstructorViewCourse.aspx?IdString=" + courseSerial.ToString());
                };
                tr.Controls.Add(td1);
                tr.Controls.Add(td2);
                tr.Controls.Add(td3);

            }

            con.Close();



        }
        protected void logOut_click(object sender, EventArgs e)
        {
            Session["id"] = null;
            Response.Redirect("Login.aspx");
        }
    }
}