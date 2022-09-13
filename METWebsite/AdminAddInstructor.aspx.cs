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


namespace METWebsite
{
    public partial class AdminAddInstructor : System.Web.UI.Page
    {
        Button yes = new Button();
        Button no = new Button();

        protected void Page_Load(object sender, EventArgs e)
        {
            yes.Click += Yes_Click;
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
            string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["MET"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            //SqlCommand course_title = new SqlCommand("courseTitle", con);
            String name = nameInput.Value.ToString();
            String password = Generate_Password();
            String email = emailInput.Value.ToString();
            SqlCommand addInstructor = new SqlCommand("AdminAddInstructor", con);
            addInstructor.CommandType = System.Data.CommandType.StoredProcedure;
            addInstructor.Parameters.Add(new SqlParameter("@email", email));
            addInstructor.Parameters.Add(new SqlParameter("@password", password));
            addInstructor.Parameters.Add(new SqlParameter("name", name));
            con.Open();
            addInstructor.ExecuteNonQuery();
            con.Close();
            try
            {
                string fromMail = "metwebsite140@gmail.com";
                string fromPassword = "zbagtxzobpzlsode";

                MailMessage message = new MailMessage();
                message.From = new MailAddress(fromMail);
                message.Subject = "MET Login Invitation";
                message.To.Add(new MailAddress(email));
                message.Body =  "<html>" +
               
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
                + "<label style=\"font-family:Dubai;color:white;font-size:1.1vw;margin-bottom:5px\" > Password : " + password+ "</label >"
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
                mailmessage.InnerText = "Mail sent sucessfully";
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Please try again')</script>");
                mailmessage.InnerText = "Mail failed";

            }

        }
        protected void Yes_Click(object sender, EventArgs e)
        {

        }
    }
}