using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Threading;
using System.Net;
using System.Net.Mail;
using System.Web.UI.HtmlControls;
using System.Data;

namespace METWebsite
{
    public partial class AdminAddInstructor : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected string Generate_Password()
        {
            string allowedChars = "";

            allowedChars = "a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z,";

            allowedChars += "A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,";

            allowedChars += "1,2,3,4,5,6,7,8,9,0,!,@,#,$,%,&,?";

            char[] sep = { ',' };

            string[] arr = allowedChars.Split(sep);

            string passwordString = "";

            string temp = "";

            Random rand = new Random();

            for (int i = 0; i < 10; i++)

            {

                temp = arr[rand.Next(0, arr.Length)];

                passwordString += temp;

            }

            return passwordString;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var div = new HtmlGenericControl("div");
            var div2 = new HtmlGenericControl("div");
            var label = new HtmlGenericControl("label");
            var div3 = new HtmlGenericControl("div");
            div.Attributes.Add("class", "confirmationOverlay");
            div2.Attributes.Add("class", "confirmationBox");
            div3.Attributes.Add("class", "confirmationButtons");
            label.Attributes.Add("class", "confirmationLabel");
            div.Controls.Add(div2);
            div2.Controls.Add(label);
            div2.Controls.Add(div3);
            div3.Controls.Add(button2);
            div3.Controls.Add(button3);
            label.InnerHtml = "Are You Sure That You Want To Send an Invitation To \"" + nameInput.Value.ToUpper() +"\" ?";
            form1.Controls.Add(div);
            button2.Visible = true;
            button3.Visible = true;

        }

        protected void displayError(String labelText)
        {
            button2.Visible = false;
            button3.Visible = false;
            var div = new HtmlGenericControl("div");
            var div2 = new HtmlGenericControl("div");
            var div3 = new HtmlGenericControl("div");
            var button = new HtmlGenericControl("button");
            var img = new HtmlGenericControl("img");
            var label = new HtmlGenericControl("label");
            var span = new HtmlGenericControl("span");
            div.Attributes.Add("class", "successOverlay");
            div.Attributes.Add("id", "successOverlay");
            div2.Attributes.Add("class", "successBox");
            div3.Attributes.Add("class", "successMessage");
            button.Attributes.Add("class", "closeButton");
            button.Attributes.Add("onclick", "confirmAlumni()");
            label.Attributes.Add("class", "successLabel");
            span.InnerHtml = "x";
            label.InnerHtml = labelText;
            img.Attributes.Add("src", "./images/ErrorIcon.png");
            div3.Controls.Add(img);
            div3.Controls.Add(label);
            button.Controls.Add(span);
            div2.Controls.Add(button);
            div2.Controls.Add(div3);
            div.Controls.Add(div2);
            form1.Controls.Add(div);
        }
        protected void Yes_Click(object sender, EventArgs e)
        {
            
            
            try
            {
                string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["MET"].ConnectionString;
                SqlConnection con = new SqlConnection(strcon);
                String name = nameInput.Value.ToString();
                String password = Generate_Password();
                String email = emailInput.Value.ToString();
                String position = positionInput.Items[positionInput.SelectedIndex].Value;
                SqlCommand addInstructor = new SqlCommand("AdminAddInstructor", con);
                addInstructor.CommandType = System.Data.CommandType.StoredProcedure;
                addInstructor.Parameters.Add(new SqlParameter("@email", email));
                addInstructor.Parameters.Add(new SqlParameter("@password", password));
                addInstructor.Parameters.Add(new SqlParameter("@name", name));
                addInstructor.Parameters.Add(new SqlParameter("@position", position));
                SqlParameter sendInviteFlag = addInstructor.Parameters.Add("@sendInviteFlag", SqlDbType.Bit);
                sendInviteFlag.Direction = ParameterDirection.Output;


                con.Open();
                addInstructor.ExecuteNonQuery();
                con.Close();
                if (sendInviteFlag.Value.ToString() == "True")
                {
                    string fromMail = "metwebsite140@gmail.com";
                    string fromPassword = "zbagtxzobpzlsode";

                    MailMessage message = new MailMessage();
                    message.From = new MailAddress(fromMail);
                    message.Subject = "MET Login Invitation";
                    message.To.Add(new MailAddress(email));
                    message.Body = "<html>" +

                    "<body style=\"background: linear-gradient(to right, #000000, #ED1C24, #FFCB05);padding:2vw;border-radius:15px\">" +

                    "<div  style=\"width:95%;margin-left:2.5%\" >" +
                    " <label style=\"font-family:Dubai;color:white;font-size:2vw;font-weight:600\" > Welcome to the faculty of Media Engineering and Technology official website </label>" +
                    "</div>" +
                    "<div  style=\"width:100%; \" >" +
                    " <br />" +
                    " <label style=\"font-family:Dubai;color:white;font-size:1.3vw; margin-bottom:3vw;\" > Dear " + name + ",</label>" +
                    " <br /> " +
                    " <br /> " +
                    " <label style=\"font-family:Dubai;color:white;font-size:1.1vw;margin-bottom:1vw\" > Your login credentials are as follows : </label >" +
                    " <br /> " +
                    " <label style=\"font-family:Dubai;color:white;font-size:1.1vw;margin-bottom:5px\" > Username : " + email + "</label >"
                    + "<br/>"
                    + "<label style=\"font-family:Dubai;color:white;font-size:1.1vw;margin-bottom:5px\" > Password : " + password + "</label >"
                        +
                    "</div>" +
                    " </body>" +
                    "</html>";

                    message.IsBodyHtml = true;

                    var smtpClient = new SmtpClient("smtp.gmail.com")
                    {
                        Port = 587,
                        Credentials = new NetworkCredential(fromMail, fromPassword),
                        EnableSsl = true,
                    };

                    smtpClient.Send(message);

                    button2.Visible = false;
                    button3.Visible = false;
                    var div = new HtmlGenericControl("div");
                    var div2 = new HtmlGenericControl("div");
                    var div3 = new HtmlGenericControl("div");
                    var button = new HtmlGenericControl("button");
                    var img = new HtmlGenericControl("img");
                    var label = new HtmlGenericControl("label");
                    var span = new HtmlGenericControl("span");
                    div.Attributes.Add("class", "successOverlay");
                    div.Attributes.Add("id", "successOverlay");
                    div2.Attributes.Add("class", "successBox");
                    div3.Attributes.Add("class", "successMessage");
                    button.Attributes.Add("class", "closeButton");
                    button.Attributes.Add("onclick", "confirmAlumni()");
                    label.Attributes.Add("class", "successLabel");
                    span.InnerHtml = "x";
                    label.InnerHtml = "Invitation Is sent Successfully";
                    img.Attributes.Add("src", "./images/yes.svg");
                    div3.Controls.Add(img);
                    div3.Controls.Add(label);
                    button.Controls.Add(span);
                    div2.Controls.Add(button);
                    div2.Controls.Add(div3);
                    div.Controls.Add(div2);
                    form1.Controls.Add(div);
                    //mailmessage.InnerText = "Mail sent sucessfully";
                }
                else
                {
                    displayError("Instructor already exist!");
                }
            }
            catch (Exception ex)
            {
                displayError("Error Sending Invitation to Instructor!");
                
            }
        }
    }
}