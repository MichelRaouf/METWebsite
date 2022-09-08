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

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["MET"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            //SqlCommand course_title = new SqlCommand("courseTitle", con);
            String name = nameInput.Value.ToString();
            String password = passwordInput.Value.ToString();
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
                message.Subject = "Test Subject";
                message.To.Add(new MailAddress(email));
                message.Body = "<html><body> Test Body </body></html>";
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
    }
}