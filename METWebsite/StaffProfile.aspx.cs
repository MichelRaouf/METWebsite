using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace METWebsite
{
    public partial class StaffProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         //   int id =(int) Session["instructorid"];
            string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["MET"].ConnectionString;
            //create new sqlconnection and connection to database by using connection string from web.config file  
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("getInstructor", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            SqlParameter inst = new SqlParameter("@instID", 1);
            cmd.Parameters.Add(inst);
            SqlDataReader reader = cmd.ExecuteReader();
            string email="";string office=""; string office_hours="";
            string name=""; string tele = ""; string fax = "";string country=""; string city =""; string dep = ""; string dob = ""; 
            string nation = ""; string stat = ""; string lang = "";



                reader.Read(); 
                email = reader.GetValue(1).ToString();
                name = reader.GetValue(3).ToString();
                office = reader.GetValue(4).ToString();
                office_hours = reader.GetValue(5).ToString();
                dep = reader.GetValue(6).ToString();
                tele = reader.GetValue(7).ToString();
                fax = reader.GetValue(8).ToString();
                city = reader.GetValue(9).ToString();
                country = reader.GetValue(10).ToString();
                dob = reader.GetValue(11).ToString();
                nation = reader.GetValue(12).ToString();
                stat = reader.GetValue(13).ToString();
                lang = reader.GetValue(14).ToString();
               
            
            con.Close();


            var img = new HtmlGenericControl("img");
            img.Attributes.Add("class", "profileImage");
            img.Attributes.Add("src", "images/profile/Haythem.svg");
            var imgdiv = new HtmlGenericControl("div");
            imgdiv.Attributes.Add("class", "profileImageDiv");
            imgdiv.Controls.Add(img);

            var namelabel = new HtmlGenericControl("label");
            namelabel.Attributes.Add("class", "name");
            namelabel.InnerHtml = name;

            var title = new HtmlGenericControl("label");
            title.Attributes.Add("class", "title");
            title.InnerHtml = dep;

            var titleDiv = new HtmlGenericControl("div");
            titleDiv.Attributes.Add("class", "titleDiv");
            titleDiv.Controls.Add(title);

            var seconddiv = new HtmlGenericControl("div");
            seconddiv.Controls.Add(namelabel);
            seconddiv.Controls.Add(titleDiv);


            var thirddiv = new HtmlGenericControl("div");



            var iconlabel1 = new HtmlGenericControl("div");
            iconlabel1.Attributes.Add("class", "info");
            var img1 = new HtmlGenericControl("img");
            img1.Attributes.Add("class", "icon");
            img1.Attributes.Add("src", "images/Profile/officeIcon.svg");
            var imagediv1 = new HtmlGenericControl("div");
            imagediv1.Controls.Add(img1);
            var label1 = new HtmlGenericControl("label");
            label1.Attributes.Add("class", "iconLabel");
            label1.InnerHtml = office;
            var labeldiv1 = new HtmlGenericControl("label");
            labeldiv1.Controls.Add(label1);
            iconlabel1.Controls.Add(imagediv1);
            iconlabel1.Controls.Add(labeldiv1);

            var iconlabel2 = new HtmlGenericControl("div");
            iconlabel2.Attributes.Add("class", "info");
            var img2 = new HtmlGenericControl("img");
            img2.Attributes.Add("class", "icon");
            img2.Attributes.Add("src", "images/Profile/emailIcon.svg");
            var imagediv2 = new HtmlGenericControl("div");
            imagediv2.Controls.Add(img2);
            var label2 = new HtmlGenericControl("label");
            label2.Attributes.Add("class", "iconLabel");
            label2.InnerHtml = email;
            var labeldiv2 = new HtmlGenericControl("label");
            labeldiv2.Controls.Add(label2);
            iconlabel2.Controls.Add(imagediv2);
            iconlabel2.Controls.Add(labeldiv2);

            var iconlabel3 = new HtmlGenericControl("div");
            iconlabel3.Attributes.Add("class", "info");
            var img3 = new HtmlGenericControl("img");
            img3.Attributes.Add("class", "icon");
            img3.Attributes.Add("src","images/Profile/faxIcon.svg");
            var imagediv3 = new HtmlGenericControl("div");
            imagediv3.Controls.Add(img3);
            var label3 = new HtmlGenericControl("label");
            label3.Attributes.Add("class", "iconLabel");
            label3.InnerHtml = fax;
            var labeldiv3 = new HtmlGenericControl("label");
            labeldiv3.Controls.Add(label3);
            iconlabel3.Controls.Add(imagediv3);
            iconlabel3.Controls.Add(labeldiv3);

            var iconlabel4 = new HtmlGenericControl("div");
            iconlabel4.Attributes.Add("class", "info");
            var img4 = new HtmlGenericControl("img");
            img4.Attributes.Add("class", "icon");
            img4.Attributes.Add("src","images/Profile/phoneIcon.svg");
            var imagediv4 = new HtmlGenericControl("div");
            imagediv4.Controls.Add(img4);
            var label4 = new HtmlGenericControl("label");
            label4.Attributes.Add("class", "iconLabel");
            label4.InnerHtml = tele;
            var labeldiv4 = new HtmlGenericControl("label");
            labeldiv4.Controls.Add(label4);
            iconlabel4.Controls.Add(imagediv4);
            iconlabel4.Controls.Add(labeldiv4);

            thirddiv.Controls.Add(iconlabel1);
            thirddiv.Controls.Add(iconlabel2);
            thirddiv.Controls.Add(iconlabel3);
            thirddiv.Controls.Add(iconlabel4);

            ProfileHeader.Controls.Add(imgdiv);
            ProfileHeader.Controls.Add(seconddiv);
            ProfileHeader.Controls.Add(thirddiv);

            /////////////////////////////////////////////////////////////////
  
            var listdiv = new HtmlGenericControl("div");
            listdiv.Attributes.Add("class", "listDiv");
            var ulpersonal = new HtmlGenericControl("ul");
            var item1=  new HtmlGenericControl("li");
            item1.InnerHtml ="Born in "+city+ ", " + country + " on  " + dob;
            var item2 = new HtmlGenericControl("li");
            item2.InnerHtml = "Nationality: " + nation;
            var item3 = new HtmlGenericControl("li");
            item3.InnerHtml = stat;
             var item4 = new HtmlGenericControl("li");
            item4.InnerHtml = "language(s): " + lang;
            ulpersonal.Controls.Add(item1);
            ulpersonal.Controls.Add(item2); 
            ulpersonal.Controls.Add(item3);
            ulpersonal.Controls.Add(item4);
            listdiv.Controls.Add(ulpersonal);

            PersonalInfo.Controls.Add(listdiv);

            //////////////////////////////////////////////////////////////////////
            con.Open();
            SqlCommand cmd1 = new SqlCommand("Select * from Education ", con);
            SqlDataReader reader1 = cmd1.ExecuteReader();
            string educDate=""; string educPlace=""; string educTitle = ""; string educField = "";

            while (reader1.Read())
            {
                educDate = reader1.GetValue(4).ToString();
                educPlace = reader1.GetValue(2).ToString();
                educTitle = reader1.GetValue(3).ToString();
                educField = reader1.GetValue(5).ToString();

                var eduDiv1 = new HtmlGenericControl("div");
                var eduDiv2 = new HtmlGenericControl("div");
                var eduDiv3 = new HtmlGenericControl("div");

                var eduDate = new HtmlGenericControl("label");
                eduDate.Attributes.Add("class", "date");
                eduDate.InnerHtml = educDate;
                eduDiv1.Attributes.Add("class", "dateDiv");
                eduDiv1.Controls.Add(eduDate);

                eduDiv2.Attributes.Add("class", "vertical");
                eduDiv3.Attributes.Add("class", "titles");

                var eduTitleDiv = new HtmlGenericControl("div");
                eduTitleDiv.Attributes.Add("class", "title1Div");
                var eduTitle = new HtmlGenericControl("label");
                eduTitle.InnerHtml = educTitle;
                eduTitle.Style.Add("font-size", "1.7713365539452497vw");
                eduTitleDiv.Controls.Add(eduTitle);

                var eduPlaceDiv = new HtmlGenericControl("div");
                eduPlaceDiv.Attributes.Add("class", "title2Div");
                var eduPlace = new HtmlGenericControl("label");
                eduPlace.InnerHtml = educPlace;
                eduPlace.Style.Add("font-size", "1.3687600644122384vw");
                eduPlaceDiv.Controls.Add(eduPlace);

                var eduFieldDiv = new HtmlGenericControl("div");
                eduFieldDiv.Attributes.Add("class", "title3Div");
                var eduField = new HtmlGenericControl("label");
                eduField.InnerHtml = educField;
                eduField.Style.Add("font-size", "1.3687600644122384vw");
                eduFieldDiv.Controls.Add(eduField);

                var eduHorizBar = new HtmlGenericControl("hr");
                eduHorizBar.Style.Add("height", "0.040257648953301126vw");
                eduHorizBar.Style.Add("border-width","0");
                eduHorizBar.Style.Add("color","gray");
                eduHorizBar.Style.Add("background-color","gray");
                eduHorizBar.Style.Add("opacity","0.3");

                var eduHorizBarDiv = new HtmlGenericControl("div");
                eduHorizBarDiv.Style.Add("padding-top", "0.8051529790660226vw;");
                eduHorizBarDiv.Controls.Add(eduHorizBar);

                eduDiv3.Controls.Add(eduTitleDiv);
                eduDiv3.Controls.Add(eduPlaceDiv);
                eduDiv3.Controls.Add(eduFieldDiv);
                eduDiv3.Controls.Add(eduHorizBarDiv);


                var eduSection = new HtmlGenericControl("div");
                eduSection.Attributes.Add("class", "section");
                eduSection.Controls.Add(eduDiv1);
                eduSection.Controls.Add(eduDiv2);
                eduSection.Controls.Add(eduDiv3);

                educationSection.Controls.Add(eduSection);
            }
            con.Close();
            //////////////////////////////////////////////////////////////////////
             con.Open();
            SqlCommand cmd2 = new SqlCommand("Select * from Employment ", con);
            SqlDataReader reader2 = cmd2.ExecuteReader();
            string empStartDate = ""; string empEndDate = ""; string empTitle = ""; string empField = ""; string empPlace = "";
            int count = 3;
            while (reader2.Read())
            {
                count--;
                empStartDate = reader2.GetValue(4).ToString();
                empEndDate = reader2.GetValue(5).ToString();
                empPlace = reader2.GetValue(3).ToString();
                empTitle = reader2.GetValue(2).ToString();
                empField = reader2.GetValue(6).ToString();

                var empDiv1 = new HtmlGenericControl("div");
                var empDiv2 = new HtmlGenericControl("div");
                var empDiv3 = new HtmlGenericControl("div");

                var emplDate = new HtmlGenericControl("label");
                emplDate.Attributes.Add("class", "date");
                emplDate.InnerHtml = empStartDate + "\n" + " to "+ "\n" +empEndDate;
                empDiv1.Attributes.Add("class", "dateDiv");
                empDiv1.Controls.Add(emplDate);

                empDiv2.Attributes.Add("class", "vertical");
                empDiv3.Attributes.Add("class", "titles");

                var empTitleDiv = new HtmlGenericControl("div");
                empTitleDiv.Attributes.Add("class", "title1Div");
                var emplTitle = new HtmlGenericControl("label");
                emplTitle.InnerHtml = empTitle;
                emplTitle.Style.Add("font-size", "1.7713365539452497vw");
                empTitleDiv.Controls.Add(emplTitle);

                var empPlaceDiv = new HtmlGenericControl("div");
                empPlaceDiv.Attributes.Add("class", "title2Div");
                var emplPlace = new HtmlGenericControl("label");
                emplPlace.InnerHtml = empPlace;
                emplPlace.Style.Add("font-size", "1.3687600644122384vw");
                empPlaceDiv.Controls.Add(emplPlace);

                var empFieldDiv = new HtmlGenericControl("div");
                empFieldDiv.Attributes.Add("class", "title3Div");
                var emplField = new HtmlGenericControl("label");
                emplField.InnerHtml = empField;
                emplField.Style.Add("font-size", "1.3687600644122384vw");
                empFieldDiv.Controls.Add(emplField);

                var empHorizBar = new HtmlGenericControl("hr");
                empHorizBar.Style.Add("height", "0.040257648953301126vw");
                empHorizBar.Style.Add("border-width", "0");
                empHorizBar.Style.Add("color", "gray");
                empHorizBar.Style.Add("background-color", "gray");
                empHorizBar.Style.Add("opacity", "0.3");

                var empHorizBarDiv = new HtmlGenericControl("div");
                empHorizBarDiv.Style.Add("padding-top", "0.8051529790660226vw;");
                empHorizBarDiv.Controls.Add(empHorizBar);

                empDiv3.Controls.Add(empTitleDiv);
                empDiv3.Controls.Add(empPlaceDiv);
                empDiv3.Controls.Add(empFieldDiv);
                empDiv3.Controls.Add(empHorizBarDiv);


                var empSection = new HtmlGenericControl("div");
                empSection.Attributes.Add("class", "section");
                empSection.Controls.Add(empDiv1);
                empSection.Controls.Add(empDiv2);
                empSection.Controls.Add(empDiv3);
                if ( count>=0)
                employmentSection.Controls.Add(empSection);
                else
                {
                    more.Controls.Add(empSection);
                    employmentSection.Controls.Add(more);

                }
            }
            if (count == 0  || count > 0 )
                employmentSection.Controls.Remove(buttonTeach);

            if (count < 0)
            {
                employmentSection.Controls.Add(buttonTeach);

            }
            con.Close();
            ///////////////////////////////////////////////////////////////
           con.Open();
            SqlCommand cmd3 = new SqlCommand("getInstSemester", con);
            cmd3.CommandType = System.Data.CommandType.StoredProcedure;
            SqlParameter instrT = new SqlParameter("@instID", 1);
            cmd3.Parameters.Add(instrT);
            SqlDataReader reader3 = cmd3.ExecuteReader();
            List<int> SerT = new List<int>();
            List<string> YearT = new List<string>();
            List<string> SeasonT = new List<string>();
             int  semesterSerial = 0; string semesterYear = ""; string semesterSeason = "";
            while (reader3.Read())
            {
                semesterSerial= reader3.GetInt32(0);
                semesterYear= reader3.GetValue(1).ToString();
                semesterSeason= reader3.GetString(2);
                SerT.Add(semesterSerial);
                YearT.Add(semesterYear);
                SeasonT.Add(semesterSeason);

            }

            con.Close();
            int countH = 3;
            int j = 0;
            while (j < SerT.Count) {
                con.Open();
                SqlCommand cmd33 = new SqlCommand("getInstCourses", con);
                cmd33.CommandType = System.Data.CommandType.StoredProcedure;
                SqlParameter instrH = new SqlParameter("@instID", 1);
                SqlParameter serialH = new SqlParameter("@semesterSerial",SerT.ElementAt(j));
                cmd33.Parameters.Add(instrH);
                cmd33.Parameters.Add(serialH);
                SqlDataReader reader33 = cmd33.ExecuteReader();
              
                var TeaDiv1 = new HtmlGenericControl("div");
                var TeaDiv2 = new HtmlGenericControl("div");
                var TeaDiv3 = new HtmlGenericControl("div");

                var TeaDate = new HtmlGenericControl("label");
                TeaDate.Attributes.Add("class", "date");
                TeaDate.InnerHtml = SeasonT.ElementAt(j) + "\n" + " , " + "\n" + YearT.ElementAt(j);
                TeaDiv1.Attributes.Add("class", "dateDiv");
                TeaDiv1.Controls.Add(TeaDate);

                TeaDiv2.Attributes.Add("class", "vertical");
                TeaDiv3.Attributes.Add("class", "titles");

                var TeaTitleDiv = new HtmlGenericControl("div");

                while (reader33.Read())
                {
                  

                  
                    TeaTitleDiv.Attributes.Add("class", "title1Div");
                    var TeachTitle = new HtmlGenericControl("label");
                    TeachTitle.InnerHtml = reader33.GetString(0);
                    TeaTitleDiv.Style.Add("font-size", "1.7713365539452497vw");
                    TeaTitleDiv.Controls.Add(TeachTitle);

                }   

                    var TeaHorizBar = new HtmlGenericControl("hr");
                    TeaHorizBar.Style.Add("height", "0.040257648953301126vw");
                    TeaHorizBar.Style.Add("border-width", "0");
                    TeaHorizBar.Style.Add("color", "gray");
                    TeaHorizBar.Style.Add("background-color", "gray");
                    TeaHorizBar.Style.Add("opacity", "0.3");

                    var TeaHorizBarDiv = new HtmlGenericControl("div");
                    TeaHorizBarDiv.Style.Add("padding-top", "0.8051529790660226vw;");
                    TeaHorizBarDiv.Controls.Add(TeaHorizBar);

                    TeaDiv3.Controls.Add(TeaTitleDiv);
                    TeaDiv3.Controls.Add(TeaHorizBarDiv);


                var Teachall = new HtmlGenericControl("div");
                Teachall.Attributes.Add("class", "section");
                Teachall.Controls.Add(TeaDiv1);
                Teachall.Controls.Add(TeaDiv2);
                Teachall.Controls.Add(TeaDiv3);
                    if (countH > 0)
                        TeachingSection.Controls.Add(Teachall);
                    else
                    {
                        more2.Controls.Add(Teachall);
                        TeachingSection.Controls.Add(more2);

                    }
                countH--;
                j++;
                con.Close();
            }
            if (countH == 0 || countH > 0)
                TeachingSection.Controls.Remove(buttonTeach);

            if (countH < 0)
            {
                TeachingSection.Controls.Add(buttonTeach);

            }




            //////////////////////////////////////////////////////////////
            con.Open();
            SqlCommand cmd4 = new SqlCommand("getInterests", con);
            cmd4.CommandType = System.Data.CommandType.StoredProcedure;
            SqlParameter instr = new SqlParameter("@instID", 1);
            cmd4.Parameters.Add(instr);
            SqlDataReader reader4 = cmd4.ExecuteReader();

            while (reader4.Read())
            {
                var item = new HtmlGenericControl("li");
                item.Attributes.Add("class", "item");
                item.InnerHtml = reader4.GetValue(0).ToString();
                research_interests.Controls.Add(item);

            }
            con.Close();

            con.Open();
            SqlCommand cmd5 = new SqlCommand("getLinks", con);
            cmd5.CommandType = System.Data.CommandType.StoredProcedure;
            SqlParameter instrR = new SqlParameter("@instID", 1);
            cmd5.Parameters.Add(instrR);
            SqlDataReader reader5 = cmd5.ExecuteReader();
            string LinkTitle = "";  string LinkUrl = "";
            int countr = 3;
            while (reader5.Read())
            {
                countr--;
                LinkTitle=reader5.GetValue(0).ToString();
                LinkUrl=reader5.GetValue(1).ToString();


                var LinkDiv1 = new HtmlGenericControl("div");
                var LinkDiv2 = new HtmlGenericControl("div");
                var LinkDiv3 = new HtmlGenericControl("div");

            
                LinkDiv1.Attributes.Add("class", "dateDiv");
              

                LinkDiv2.Attributes.Add("class", "vertical");

                LinkDiv3 = new HtmlGenericControl("div");
                LinkDiv3.Attributes.Add("class", "titles");
                var linkTitleDiv = new HtmlGenericControl("div");
                linkTitleDiv.Attributes.Add("class", "title1Div");
                var linkTitle = new HtmlGenericControl("label");
                linkTitle.InnerHtml = LinkTitle;
                linkTitle.Style.Add("font-size", "1.7713365539452497vw");
                linkTitleDiv.Controls.Add(linkTitle);

                var linkUrlDiv = new HtmlGenericControl("div");
                linkUrlDiv.Attributes.Add("class", "title2Div");
                var linkUrl = new HtmlGenericControl("label");
                linkUrl.InnerHtml = LinkUrl;
                linkUrl.Style.Add("font-size", "1.3687600644122384vw");
                linkUrlDiv.Controls.Add(linkUrl);

                LinkDiv3.Controls.Add(linkTitleDiv);
                LinkDiv3.Controls.Add(linkUrlDiv);

                var linkall = new HtmlGenericControl("div");
                linkall.Attributes.Add("class", "section");
                linkall.Controls.Add(LinkDiv1);
                linkall.Controls.Add(LinkDiv2);
                linkall.Controls.Add(LinkDiv3);

                if (countr >= 0)
                   LinksSection.Controls.Add(linkall);
                else
                {
                    more3.Controls.Add(linkall);
                    LinksSection.Controls.Add(more3);

                }
            }
            if (countr == 0 || countr > 0)
                LinksSection.Controls.Remove(buttonMore3);

            if (countr < 0)
            {
                LinksSection.Controls.Add(buttonMore3);

            }

            con.Close();
            //////////////////////////////////////////////////
            con.Open();
            SqlCommand cmd6 = new SqlCommand("getPublication", con);
            cmd6.CommandType = System.Data.CommandType.StoredProcedure;
            SqlParameter instrP = new SqlParameter("@instID", 1);
            cmd6.Parameters.Add(instrP);
            SqlDataReader reader6 = cmd6.ExecuteReader();
            string pubType = ""; string pubYear = ""; string pubTitle = ""; string pubDescrip = ""; string pubLink = "";
            int countP = 3;
            while (reader6.Read())
            {
                countP--;
                pubType = reader6.GetValue(0).ToString();
                pubYear = reader6.GetValue(1).ToString();
                pubTitle = reader6.GetValue(2).ToString();
                pubDescrip = reader6.GetValue(3).ToString();
                pubLink= reader6.GetValue(4).ToString();

                var pubDiv1 = new HtmlGenericControl("div");
                var pubDiv2 = new HtmlGenericControl("div");
                var pubDiv3 = new HtmlGenericControl("div");

                var pubDate = new HtmlGenericControl("label");
                pubDate.Attributes.Add("class", "date");
                pubDate.InnerHtml = pubType + "\n" + "  " + "\n" + pubYear;
                pubDiv1.Attributes.Add("class", "dateDiv");
                pubDiv1.Controls.Add(pubDate);

                pubDiv2.Attributes.Add("class", "vertical");
                pubDiv3.Attributes.Add("class", "titles");

                var pubTitleDiv = new HtmlGenericControl("div");
                pubTitleDiv.Attributes.Add("class", "title1Div");
                var publTitle = new HtmlGenericControl("label");
                publTitle.InnerHtml = pubTitle;
                publTitle.Style.Add("font-size", "1.7713365539452497vw");
                pubTitleDiv.Controls.Add(publTitle);

                var pubdescDiv = new HtmlGenericControl("div");
                pubdescDiv.Attributes.Add("class", "title2Div");
                var publDes = new HtmlGenericControl("label");
                publDes.InnerHtml = pubDescrip;
                publDes.Style.Add("font-size", "1.3687600644122384vw");
                pubdescDiv.Controls.Add(publDes);

                var pubLinkDiv = new HtmlGenericControl("div");
                pubLinkDiv.Attributes.Add("class", "title3Div");
                var publLink = new HtmlGenericControl("label");
                publLink.InnerHtml = pubLink;
                publLink.Style.Add("font-size", "1.3687600644122384vw");
                pubLinkDiv.Controls.Add(publLink);

                var pubHorizBar = new HtmlGenericControl("hr");
                pubHorizBar.Style.Add("height", "0.040257648953301126vw");
                pubHorizBar.Style.Add("border-width", "0");
                pubHorizBar.Style.Add("color", "gray");
                pubHorizBar.Style.Add("background-color", "gray");
                pubHorizBar.Style.Add("opacity", "0.3");

                var pubHorizBarDiv = new HtmlGenericControl("div");
                pubHorizBarDiv.Style.Add("padding-top", "0.8051529790660226vw;");
                pubHorizBarDiv.Controls.Add(pubHorizBar);

                pubDiv3.Controls.Add(pubTitleDiv);
                pubDiv3.Controls.Add(pubdescDiv);
                pubDiv3.Controls.Add(pubLinkDiv);
                pubDiv3.Controls.Add(pubHorizBarDiv);


                var pubAll = new HtmlGenericControl("div");
                pubAll.Attributes.Add("class", "section");
                pubAll.Controls.Add(pubDiv1);
                pubAll.Controls.Add(pubDiv2);
                pubAll.Controls.Add(pubDiv3);
                if (countP >= 0)
                    PublicationSection.Controls.Add(pubAll);
                else
                {
                    more4.Controls.Add(pubAll);
                    PublicationSection.Controls.Add(more4);

                }
            }
            if (countP == 0 || countP > 0)
               PublicationSection.Controls.Remove(buttonMore4);

            if (countP < 0)
            {
                PublicationSection.Controls.Add(buttonMore4);

            }
            con.Close();
            ////////////////////////////////////////////////////
            con.Open();
            SqlCommand cmd7 = new SqlCommand("getActivities", con);
            cmd7.CommandType = System.Data.CommandType.StoredProcedure;
            SqlParameter instrA = new SqlParameter("@instID", 1);
            cmd7.Parameters.Add(instrA);
            SqlDataReader reader7 = cmd7.ExecuteReader();
            string ActStart = ""; string ActEnd = ""; string ActDescrip = ""; string ActLoc= "";
            int countA = 3;
            while (reader7.Read())
            {
                countA--;
                ActStart = reader7.GetValue(0).ToString();
                ActEnd = reader7.GetValue(1).ToString();
                ActDescrip = reader7.GetValue(2).ToString();
                ActLoc = reader7.GetValue(3).ToString();
             

                var ActDiv1 = new HtmlGenericControl("div");
                var ActDiv2 = new HtmlGenericControl("div");
                var ActDiv3 = new HtmlGenericControl("div");

                var ActDate = new HtmlGenericControl("label");
                ActDate.Attributes.Add("class", "date");
                ActDate.InnerHtml = ActStart + "\n" + " to " + "\n" + ActEnd;
                ActDiv1.Attributes.Add("class", "dateDiv");
                ActDiv1.Controls.Add(ActDate);

                ActDiv2.Attributes.Add("class", "vertical");
                ActDiv3.Attributes.Add("class", "titles");

                var ActLocDiv = new HtmlGenericControl("div");
                ActLocDiv.Attributes.Add("class", "title1Div");
                var ActLoco = new HtmlGenericControl("label");
                ActLoco.InnerHtml = "Location : "+ActLoc;
                ActLoco.Style.Add("font-size", "1.7713365539452497vw");
                ActLocDiv.Controls.Add(ActLoco);

                var ActdescDiv = new HtmlGenericControl("div");
                ActdescDiv.Attributes.Add("class", "title2Div");
                var ActDes = new HtmlGenericControl("label");
                ActDes.InnerHtml = ActDescrip;
                ActDes.Style.Add("font-size", "1.3687600644122384vw");
                ActdescDiv.Controls.Add(ActDes);

           
                var ActHorizBar = new HtmlGenericControl("hr");
                ActHorizBar.Style.Add("height", "0.040257648953301126vw");
                ActHorizBar.Style.Add("border-width", "0");
                ActHorizBar.Style.Add("color", "gray");
                ActHorizBar.Style.Add("background-color", "gray");
                ActHorizBar.Style.Add("opacity", "0.3");

                var ActHorizBarDiv = new HtmlGenericControl("div");
                ActHorizBarDiv.Style.Add("padding-top", "0.8051529790660226vw;");
                ActHorizBarDiv.Controls.Add(ActHorizBar);

                ActDiv3.Controls.Add(ActLocDiv);
                ActDiv3.Controls.Add(ActdescDiv);
                ActDiv3.Controls.Add(ActHorizBarDiv);
             


                var ActAll = new HtmlGenericControl("div");
                ActAll.Attributes.Add("class", "section");
                ActAll.Controls.Add(ActDiv1);
                ActAll.Controls.Add(ActDiv2);
                ActAll.Controls.Add(ActDiv3);
                if (countA >= 0)
                    ActivitiesSec.Controls.Add(ActAll);
                else
                {
                    more5.Controls.Add(ActAll);
                    ActivitiesSec.Controls.Add(more5);

                }
            }
            if (countA == 0 || countA > 0)
                ActivitiesSec.Controls.Remove(buttonMore5);

            if (countA < 0)
            {
               ActivitiesSec.Controls.Add(buttonMore5);

            }
            con.Close();













        }
        protected void toHome(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }
        protected void toCourses(object sender, EventArgs e)
        {
            Response.Redirect("CourseHomePage.aspx");
        }
        protected void toStaff(object sender, EventArgs e)
        {
            Response.Redirect("StaffHomePage.aspx");
        }
        protected void toStudentActiv(object sender, EventArgs e)
        {
            Response.Redirect("StudentActivities.aspx");
        }
        protected void toAlumni(object sender, EventArgs e)
        {
            Response.Redirect("AlumniPage.aspx");
        }
        protected void toAbout(object sender, EventArgs e)
        {
            Response.Redirect("AboutUsPage.aspx");
        }
    }
}