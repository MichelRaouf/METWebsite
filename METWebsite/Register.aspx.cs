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

    public partial class Register : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["MET"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            int InstructorID = (int)Session["id"];
            SqlCommand getInstructornameCmd = new SqlCommand("select name from Instructors where id = @InstId;", con);
            getInstructornameCmd.Parameters.AddWithValue("InstId", InstructorID);
            SqlDataReader reader = getInstructornameCmd.ExecuteReader();
            String InstName = "Welcome!";
            if (reader.Read())
                InstName = "Welcome " + reader.GetValue(0).ToString() + ", Let’s Set up your profile!";
            reader.Close();
            Welcome_label.InnerHtml = InstName;


        }

        public class myInput{
            String value { get; set; }
            Control div;
            HtmlInputGenericControl input;
            public myInput(String type, String placeholder,String style="")
            {
                var outerDiv = new HtmlGenericControl("div");
                outerDiv.Attributes.Add("class", "col-3 input-effect");
                this.input = new HtmlInputGenericControl(type);
                input.Attributes.Add("placeholder", " ");
                input.Attributes.Add("class", "effect-19");
                var label = new HtmlGenericControl("label");
                label.InnerHtml = placeholder;
                var span = new HtmlGenericControl("span");
                span.Attributes.Add("class", "focus-border");
                span.Controls.Add(new HtmlGenericControl("i"));
                outerDiv.Controls.Add(input);
                outerDiv.Controls.Add(label);
                outerDiv.Controls.Add(span);
                outerDiv.Attributes.Add("style", style);
                this.div = outerDiv;
            }
            
            public String getValue()
            {
                this.value = input.Value;
                return this.value;
            }
            public Control getDiv()
            {
                return this.div;
            }
    }
   
        protected void logOut_click(object sender, EventArgs e)
        {
            Session["id"] = null;
            Response.Redirect("Login.aspx");


        }
        //protected void next1(object sender,EventArgs e)
        //{
        //    string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["MET"].ConnectionString;
        //    SqlConnection con = new SqlConnection(strcon);
          
        //    int InstructorID = (int)Session["id"];
        //    String Pass = newPass.Value;
        //    String ConfirmPass = newPassConfirm.Value;
        //    String Office = office.Value;
        //    String Fax = fax.Value;
        //    String Phone = phone.Value;
        //    if (Pass == ConfirmPass)
        //    {
        //        SqlCommand addBasicInfo = new SqlCommand("addBasicInfo", con);
        //        addBasicInfo.CommandType = System.Data.CommandType.StoredProcedure;
        //        addBasicInfo.Parameters.Add(new SqlParameter("@password",Pass));
        //        addBasicInfo.Parameters.Add(new SqlParameter("@office",Office));
        //        addBasicInfo.Parameters.Add(new SqlParameter("@fax",Fax));
        //        addBasicInfo.Parameters.Add(new SqlParameter("@phone",Phone));
        //        addBasicInfo.Parameters.Add(new SqlParameter("@instructorID",InstructorID));
        //        con.Open();
        //        addBasicInfo.ExecuteNonQuery();
        //        con.Close();
        //    } 
         
        //    form1.Controls.Remove(bodyDiv);
        //    bodyDiv2.Attributes.Remove("style");
            
        //}

        //protected void next2(object sender,EventArgs e)
        //{
        //    string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["MET"].ConnectionString;
        //    SqlConnection con = new SqlConnection(strcon);

        //    int InstructorID = (int)Session["id"];
        //    String Dob = dob.Value;
        //    String Nationality = nationality.Value;
        //    String Status = status.Value;
        //    String Fax = fax.Value;
        //    String Lang = languages.Value;
        //    form1.Controls.Remove(bodyDiv2);

            

        //}

        protected void finish (object sender,EventArgs e)
        {

        }
        
    }
}