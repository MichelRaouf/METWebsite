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
	public partial class temp7 : System.Web.UI.Page
	{
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Int32.Parse(Session["instructorid"].ToString());
            string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["MET"].ConnectionString;
            //create new sqlconnection and connection to database by using connection string from web.config file  
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("getInstructor", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            SqlParameter inst = new SqlParameter("@instID", id);
            cmd.Parameters.Add(inst);
            SqlDataReader reader = cmd.ExecuteReader();
            String photoUrl = "";
            String title = "";
            String name = "";
            String position = "";
            String office = "";
            String email = "";
            String fax = "";
            String phone = "";
            String city = "";
            String country = "";
            String nationality = "";
            String status = "";
            String languages = "";
            reader.Read();
            photoUrl = "images/profile/Haythem.svg";
            title = reader.GetValue(16).ToString();
            name = reader.GetValue(3).ToString();
            position = reader.GetValue(15).ToString();
            office = reader.GetValue(4).ToString();
            email = reader.GetValue(1).ToString();
            fax = reader.GetValue(8).ToString();
            phone = reader.GetValue(7).ToString();
            city = reader.GetValue(9).ToString();
            country = reader.GetValue(10).ToString();
            String[] dob = (reader.GetValue(11).ToString()).Split(' ');
            String dobDate = dob[0];
            nationality = reader.GetValue(12).ToString();
            status = reader.GetValue(13).ToString();
            languages = reader.GetValue(14).ToString();
            con.Close();
            String titleName = title + " " + name;
            var img = new HtmlGenericControl("img");
            img.Attributes.Add("class", "profileImage");
            img.Attributes.Add("src", photoUrl);
            profileImageDiv.Controls.Add(img);
            var nameTitleLabel = new HtmlGenericControl("label");
            nameTitleLabel.Attributes.Add("class", "name");
            nameTitleLabel.InnerHtml = titleName;
            var br = new HtmlGenericControl("br");
            var positionP = new HtmlGenericControl("p");
            positionP.Attributes.Add("class", "position");
            positionP.InnerHtml = position;
            namePosition.Controls.Add(nameTitleLabel);
            namePosition.Controls.Add(br);
            namePosition.Controls.Add(positionP);
            var officeLabel = new HtmlGenericControl("label");
            officeLabel.Attributes.Add("class", "iconLabelNoPhone");
            officeLabel.InnerHtml = office;
            officeDiv.Controls.Add(officeLabel);
            var emailLabel = new HtmlGenericControl("label");
            emailLabel.Attributes.Add("class", "iconLabelNoPhone");
            emailLabel.InnerHtml = email;
            emailDiv.Controls.Add(emailLabel);
            var faxLabel = new HtmlGenericControl("label");
            faxLabel.Attributes.Add("class", "iconLabelNoPhone");
            faxLabel.InnerHtml = fax;
            faxDiv.Controls.Add(faxLabel);
            var phoneLabel = new HtmlGenericControl("label");
            phoneLabel.Attributes.Add("class", "iconLabelPhone");
            phoneLabel.InnerHtml = phone;
            phoneDiv.Controls.Add(phoneLabel);
            String li1 = "";
            if (city != "" && country != "" && dobDate != "")
            {
                li1 = "Born in " + city + ", " + country + " on " + dobDate;
            }
            else if (city != "" && country != "" && dobDate == "")
            {
                li1 = "Born in " + city + ", " + country;
            }
            else if (city != "" && country == "" && dobDate != "")
            {
                li1 = "Born in " + city + ", " + " on " + dobDate;
            }
            else if (city == "" && country != "" && dobDate != "")
            {
                li1 = "Born in " + country + ", " + " on " + dobDate;
            }
            else if (city == "" && country == "" && dobDate != "")
            {
                li1 = "Born on " + dobDate;
            }
            else if (city == "" && country != "" && dobDate == "")
            {
                li1 = "Born in " + country;
            }
            else if (city != "" && country == "" && dobDate == "")
            {
                li1 = "Born in " + city;
            }
            if (li1 != "")
            {
                var birthInfo = new HtmlGenericControl("li");
                birthInfo.InnerHtml = li1;
                personalList.Controls.Add(birthInfo);
            }
            if (nationality != "")
            {
                String li2 = "Nationality: " + nationality;
                var nationLi = new HtmlGenericControl("li");
                nationLi.InnerHtml = li2;
                personalList.Controls.Add(nationLi);
            }
            if (status != "")
            {
                var statusLi = new HtmlGenericControl("li");
                statusLi.InnerHtml = status;
                personalList.Controls.Add(statusLi);
            }
            if (languages != "")
            {
                String li4 = "Languages: " + languages;
                var langLi = new HtmlGenericControl("li");
                langLi.InnerHtml = li4;
                personalList.Controls.Add(langLi);
            }
            //////////////////////////////////////////////////////////
            con.Open();
            SqlCommand cmd1 = new SqlCommand("getEducation", con);
            cmd1.CommandType = System.Data.CommandType.StoredProcedure;
            SqlParameter instEd = new SqlParameter("@instID", id);
            cmd1.Parameters.Add(instEd);
            SqlDataReader reader1 = cmd1.ExecuteReader();
            string educMonth = "";
            string educYear = "";
            string educTitle = "";
            string educPlace = "";
            string educField = "";
            while (reader1.Read())
            {
                educMonth = reader1.GetValue(5).ToString();
                educYear = reader1.GetValue(6).ToString();
                educTitle = reader1.GetValue(3).ToString();
                educPlace = reader1.GetValue(2).ToString();
                educField = reader1.GetValue(4).ToString();
                String educDate = educMonth + ", " + educYear;
                var dateLabel = new HtmlGenericControl("label");
                dateLabel.Attributes.Add("class", "date");
                dateLabel.InnerHtml = educDate;
                var dateDiv = new HtmlGenericControl("div");
                dateDiv.Attributes.Add("class", "dateDiv");
                dateDiv.Controls.Add(dateLabel);
                var infoItem = new HtmlGenericControl("div");
                infoItem.Attributes.Add("class", "infoItem");
                infoItem.Controls.Add(dateDiv);
                var vertical = new HtmlGenericControl("div");
                vertical.Attributes.Add("class", "vertical");
                infoItem.Controls.Add(vertical);
                var titleLabel = new HtmlGenericControl("label");
                titleLabel.InnerHtml = educTitle;
                var titleDiv = new HtmlGenericControl("div");
                titleDiv.Attributes.Add("class", "degreeTitle");
                titleDiv.Controls.Add(titleLabel);
                var placeLabel = new HtmlGenericControl("label");
                placeLabel.InnerHtml = educPlace;
                var placeDiv = new HtmlGenericControl("div");
                placeDiv.Attributes.Add("class", "university");
                placeDiv.Controls.Add(placeLabel);
                var fieldLabel = new HtmlGenericControl("label");
                fieldLabel.InnerHtml = educField;
                var fieldDiv = new HtmlGenericControl("div");
                fieldDiv.Attributes.Add("class", "description");
                fieldDiv.Controls.Add(fieldLabel);
                var textDiv = new HtmlGenericControl("div");
                textDiv.Attributes.Add("class", "text");
                textDiv.Controls.Add(titleDiv);
                textDiv.Controls.Add(placeDiv);
                textDiv.Controls.Add(fieldDiv);
                var horizontal = new HtmlGenericControl("div");
                horizontal.Attributes.Add("class", "horizontal");
                textDiv.Controls.Add(horizontal);
                infoItem.Controls.Add(textDiv);
                educationSection.Controls.Add(infoItem);
            }
            con.Close();
            //////////////////////////////////////////////////////////
            con.Open();
            SqlCommand cmd2 = new SqlCommand("getEmployment", con);
            cmd2.CommandType = System.Data.CommandType.StoredProcedure;
            SqlParameter instEm = new SqlParameter("@instID", id);
            cmd2.Parameters.Add(instEm);
            SqlDataReader reader2 = cmd2.ExecuteReader();
            string empStartMonth = "";
            string empStartYear = "";
            string empEndMonth = "";
            string empEndYear = "";
            string empTitle = "";
            string empField = "";
            string empPlace = "";
            int count = 3;
            while (reader2.Read())
            {
                count--;
                empStartMonth = reader2.GetValue(5).ToString();
                empStartYear = reader2.GetValue(6).ToString();
                empEndMonth = reader2.GetValue(7).ToString();
                empEndYear = reader2.GetValue(8).ToString();
                empPlace = reader2.GetValue(3).ToString();
                empTitle = reader2.GetValue(2).ToString();
                empField = reader2.GetValue(4).ToString();
                String startDate = empStartMonth + ", " + empStartYear;
                String endDate = "";
                if (empEndMonth == "" && empEndYear == "")
                {
                    endDate = "Still Running";
                }
                else
                {
                    endDate = empEndMonth + ", " + empEndYear;
                }
                var startLabel = new HtmlGenericControl("label");
                startLabel.Attributes.Add("class", "date");
                startLabel.InnerHtml = startDate;
                var toLabel = new HtmlGenericControl("label");
                toLabel.Attributes.Add("class", "date");
                toLabel.InnerHtml = "to";
                var endLabel = new HtmlGenericControl("label");
                endLabel.Attributes.Add("class", "date");
                endLabel.InnerHtml = endDate;
                var dateDiv = new HtmlGenericControl("div");
                dateDiv.Attributes.Add("class", "dateDiv");
                dateDiv.Controls.Add(startLabel);
                dateDiv.Controls.Add(toLabel);
                dateDiv.Controls.Add(endLabel);
                var infoItemEmp = new HtmlGenericControl("div");
                infoItemEmp.Attributes.Add("class", "infoItem");
                infoItemEmp.Controls.Add(dateDiv);
                var vertical = new HtmlGenericControl("div");
                vertical.Attributes.Add("class", "vertical");
                infoItemEmp.Controls.Add(vertical);
                var titleLabel = new HtmlGenericControl("label");
                titleLabel.InnerHtml = empTitle;
                var titleDiv = new HtmlGenericControl("div");
                titleDiv.Attributes.Add("class", "degreeTitle");
                titleDiv.Controls.Add(titleLabel);
                var placeLabel = new HtmlGenericControl("label");
                placeLabel.InnerHtml = empPlace;
                var placeDiv = new HtmlGenericControl("div");
                placeDiv.Attributes.Add("class", "university");
                placeDiv.Controls.Add(placeLabel);
                var fieldLabel = new HtmlGenericControl("label");
                fieldLabel.InnerHtml = empField;
                var fieldDiv = new HtmlGenericControl("div");
                fieldDiv.Attributes.Add("class", "description");
                fieldDiv.Controls.Add(fieldLabel);
                var horizontalEmp = new HtmlGenericControl("div");
                horizontalEmp.Attributes.Add("class", "horizontal");
                var textDivEmp = new HtmlGenericControl("div");
                textDivEmp.Attributes.Add("class", "text");
                textDivEmp.Controls.Add(titleDiv);
                textDivEmp.Controls.Add(placeDiv);
                textDivEmp.Controls.Add(fieldDiv);
                textDivEmp.Controls.Add(horizontalEmp);
                infoItemEmp.Controls.Add(textDivEmp);
                if (count >= 0)
                    employmentSection.Controls.Add(infoItemEmp);
                else
                {
                    more.Controls.Add(infoItemEmp);
                    employmentSection.Controls.Add(more);

                }
            }
            if (count == 0 || count > 0)
                employmentSection.Controls.Remove(buttonMore1);

            if (count < 0)
            {
                employmentSection.Controls.Add(buttonMore1);

            }
            con.Close();
            //////////////////////////////////////////////////////////
            con.Open();
            SqlCommand cmd3 = new SqlCommand("getInstSemester", con);
            cmd3.CommandType = System.Data.CommandType.StoredProcedure;
            SqlParameter instrT = new SqlParameter("@instID", id);
            cmd3.Parameters.Add(instrT);
            SqlDataReader reader3 = cmd3.ExecuteReader();
            List<int> SerT = new List<int>();
            List<string> YearT = new List<string>();
            List<string> SeasonT = new List<string>();
            int semesterSerial = 0;
            string semesterYear = "";
            string semesterSeason = "";
            while (reader3.Read())
            {
                semesterSerial = reader3.GetInt32(0);
                semesterYear = reader3.GetValue(1).ToString();
                semesterSeason = reader3.GetString(2);
                SerT.Add(semesterSerial);
                YearT.Add(semesterYear);
                SeasonT.Add(semesterSeason);
            }
            con.Close();
            int countH = 3;
            int j = 0;
            while (j < SerT.Count)
            {
                con.Open();
                SqlCommand cmd33 = new SqlCommand("getInstCourses", con);
                cmd33.CommandType = System.Data.CommandType.StoredProcedure;
                SqlParameter instrH = new SqlParameter("@instID", id);
                SqlParameter serialH = new SqlParameter("@semesterSerial", SerT.ElementAt(j));
                cmd33.Parameters.Add(instrH);
                cmd33.Parameters.Add(serialH);
                SqlDataReader reader33 = cmd33.ExecuteReader();
                var dateLabelT = new HtmlGenericControl("label");
                dateLabelT.Attributes.Add("class", "date");
                dateLabelT.InnerHtml = SeasonT.ElementAt(j) + " " + YearT.ElementAt(j);
                var dateDivT = new HtmlGenericControl("div");
                dateDivT.Attributes.Add("class", "dateDiv");
                dateDivT.Controls.Add(dateLabelT);
                var infoItemT = new HtmlGenericControl("div");
                infoItemT.Attributes.Add("class", "infoItem");
                infoItemT.Controls.Add(dateDivT);
                var verticalT = new HtmlGenericControl("div");
                verticalT.Attributes.Add("class", "verticalT");
                var listT = new HtmlGenericControl("ul");
                listT.Attributes.Add("class", "course");
                while (reader33.Read())
                {
                    var item = new HtmlGenericControl("li");
                    item.InnerHtml = "(" + reader33.GetValue(0).ToString() + ") " + reader33.GetValue(1).ToString();
                    listT.Controls.Add(item);
                }
                con.Close();
                con.Open();
                SqlCommand cmd333 = new SqlCommand("getInstCoursesCount", con);
                cmd333.CommandType = System.Data.CommandType.StoredProcedure;
                SqlParameter instrH1 = new SqlParameter("@instID", id);
                SqlParameter serialH1 = new SqlParameter("@semesterSerial", SerT.ElementAt(j));
                cmd333.Parameters.Add(instrH1);
                cmd333.Parameters.Add(serialH1);
                int countItems = Int32.Parse(cmd333.ExecuteScalar().ToString());
                double vertHeight = 2.95138889 * countItems;
                verticalT.Style.Add("height", vertHeight + "vw");
                con.Close();
                infoItemT.Controls.Add(verticalT);
                var textTDiv = new HtmlGenericControl("div");
                textTDiv.Attributes.Add("class", "text");
                textTDiv.Controls.Add(listT);
                var horizontalT = new HtmlGenericControl("div");
                horizontalT.Attributes.Add("class", "horizontal");
                textTDiv.Controls.Add(horizontalT);
                infoItemT.Controls.Add(textTDiv);
                if (countH > 0)
                {
                    teachingSection.Controls.Add(infoItemT);
                } else
                {
                    more2.Controls.Add(infoItemT);
                    teachingSection.Controls.Add(more2);
                }
                countH--;
                j++;
                con.Close();
            }
            if (countH == 0 || countH > 0)
                teachingSection.Controls.Remove(buttonMore2);
            if (countH < 0)
            {
                teachingSection.Controls.Add(buttonMore2);
            }
            //////////////////////////////////////////////////////////
            con.Open();
            SqlCommand cmd44 = new SqlCommand("getInterestsCount", con);
            cmd44.CommandType = System.Data.CommandType.StoredProcedure;
            SqlParameter InstR = new SqlParameter("@instID", id);
            cmd44.Parameters.Add(InstR);
            int countItemsR = Int32.Parse(cmd44.ExecuteScalar().ToString());
            con.Close();
            con.Open();
            SqlCommand cmd4 = new SqlCommand("getInterests", con);
            cmd4.CommandType = System.Data.CommandType.StoredProcedure;
            SqlParameter instI = new SqlParameter("@instID", id);
            cmd4.Parameters.Add(instI);
            SqlDataReader reader4 = cmd4.ExecuteReader();
            var emptyLabel = new HtmlGenericControl("label");
            emptyLabel.Attributes.Add("class", "date");
            var emptyDateDiv = new HtmlGenericControl("div");
            emptyDateDiv.Attributes.Add("class", "dateDiv");
            emptyDateDiv.Controls.Add(emptyLabel);
            var infoItemR1 = new HtmlGenericControl("div");
            infoItemR1.Attributes.Add("class", "infoItem");
            infoItemR1.Controls.Add(emptyDateDiv);
            var verticalR1 = new HtmlGenericControl("div");
            verticalR1.Attributes.Add("class", "verticalR");
            double vertHeightR = countItemsR * 2.6;
            verticalR1.Style.Add("height", vertHeightR + "vw");
            infoItemR1.Controls.Add(verticalR1);
            var listR = new HtmlGenericControl("ul");
            listR.Attributes.Add("class", "reInterests");
            while (reader4.Read())
            {
                var item = new HtmlGenericControl("li");
                item.InnerHtml = reader4.GetValue(0).ToString();
                listR.Controls.Add(item);
            }
            var textR1 = new HtmlGenericControl("div");
            textR1.Attributes.Add("class", "text");
            textR1.Controls.Add(listR);
            var horizontalR = new HtmlGenericControl("div");
            horizontalR.Attributes.Add("class", "horizontal");
            textR1.Controls.Add(horizontalR);
            infoItemR1.Controls.Add(textR1);
            researchSection.Controls.Add(infoItemR1);
            con.Close();
            //////////////////////////////////////////////////////////
            var linksLabel = new HtmlGenericControl("label");
            linksLabel.Attributes.Add("class", "infoSubTitle");
            linksLabel.InnerHtml = "Research Links";
            var linksLabelDiv = new HtmlGenericControl("div");
            linksLabelDiv.Attributes.Add("class", "infoSubTitleDiv");
            linksLabelDiv.Controls.Add(linksLabel);
            researchSection.Controls.Add(linksLabelDiv);
            //////////////////////////////////////////////////////////
            con.Open();
            SqlCommand cmd5 = new SqlCommand("getLinks", con);
            cmd5.CommandType = System.Data.CommandType.StoredProcedure;
            SqlParameter instrR = new SqlParameter("@instID", id);
            cmd5.Parameters.Add(instrR);
            SqlDataReader reader5 = cmd5.ExecuteReader();
            string LinkTitle = "";
            string LinkUrl = "";
            int countr = 3;
            while (reader5.Read())
            {
                countr--;
                LinkTitle = reader5.GetValue(0).ToString();
                LinkUrl = reader5.GetValue(1).ToString();
                var dateLabelR2 = new HtmlGenericControl("label");
                dateLabelR2.Attributes.Add("class", "date");
                var dateDivR2 = new HtmlGenericControl("div");
                dateDivR2.Attributes.Add("class", "dateDiv");
                dateDivR2.Controls.Add(dateLabelR2);
                var infoItemR2 = new HtmlGenericControl("div");
                infoItemR2.Attributes.Add("class", "infoItem");
                infoItemR2.Controls.Add(dateDivR2);
                var verticalR2 = new HtmlGenericControl("div");
                verticalR2.Attributes.Add("class", "verticalResearch");
                infoItemR2.Controls.Add(verticalR2);
                var titleLabelR = new HtmlGenericControl("label");
                titleLabelR.InnerHtml = LinkTitle;
                var titleDivR = new HtmlGenericControl("div");
                titleDivR.Attributes.Add("class", "university");
                titleDivR.Controls.Add(titleLabelR);
                var urlLabelR = new HtmlGenericControl("label");
                urlLabelR.InnerHtml = LinkUrl;
                var urlDivR = new HtmlGenericControl("div");
                urlDivR.Attributes.Add("class", "description1");
                urlDivR.Controls.Add(urlLabelR);
                var horizontalR2 = new HtmlGenericControl("div");
                horizontalR2.Attributes.Add("class", "horizontal");
                var textDivR2 = new HtmlGenericControl("div");
                textDivR2.Attributes.Add("class", "text");
                textDivR2.Controls.Add(titleDivR);
                textDivR2.Controls.Add(urlDivR);
                textDivR2.Controls.Add(horizontalR2);
                infoItemR2.Controls.Add(textDivR2);
                if (countr >= 0)
                    researchSection.Controls.Add(infoItemR2);
                else
                {
                    more3.Controls.Add(infoItemR2);
                    researchSection.Controls.Add(more3);

                }
            }
            if (countr == 0 || countr > 0)
                researchSection.Controls.Remove(buttonMore3);

            if (countr < 0)
            {
                researchSection.Controls.Add(buttonMore3);
            }

            con.Close();
            //////////////////////////////////////////////////////////
            con.Open();
            SqlCommand cmd6 = new SqlCommand("getPublication", con);
            cmd6.CommandType = System.Data.CommandType.StoredProcedure;
            SqlParameter instrP = new SqlParameter("@instID", id);
            cmd6.Parameters.Add(instrP);
            SqlDataReader reader6 = cmd6.ExecuteReader();
            string pubType = "";
            string pubYear = "";
            string pubTitle = "";
            string pubDescrip = "";
            string pubLink = "";
            int countP = 3;
            while (reader6.Read())
            {
                countP--;
                pubType = reader6.GetValue(0).ToString();
                pubYear = reader6.GetValue(1).ToString();
                pubTitle = reader6.GetValue(2).ToString();
                pubDescrip = reader6.GetValue(3).ToString();
                pubLink = reader6.GetValue(4).ToString();
                String pubTypeYear = pubType + " " + pubYear;
                var pubDateLabel = new HtmlGenericControl("label");
                pubDateLabel.Attributes.Add("class", "date");
                pubDateLabel.InnerHtml = pubTypeYear;
                var pubDateDiv = new HtmlGenericControl("div");
                pubDateDiv.Attributes.Add("class", "dateDiv");
                pubDateDiv.Controls.Add(pubDateLabel);
                var pubInfoItem = new HtmlGenericControl("div");
                pubInfoItem.Attributes.Add("class", "infoItem");
                pubInfoItem.Controls.Add(pubDateDiv);
                var pubVertical = new HtmlGenericControl("div");
                pubVertical.Attributes.Add("class", "vertical");
                pubInfoItem.Controls.Add(pubVertical);
                var pubTitleLabel = new HtmlGenericControl("label");
                pubTitleLabel.InnerHtml = pubTitle;
                var pubTitleDiv = new HtmlGenericControl("div");
                pubTitleDiv.Attributes.Add("class", "university");
                pubTitleDiv.Controls.Add(pubTitleLabel);
                var pubDescripLabel = new HtmlGenericControl("label");
                pubDescripLabel.InnerHtml = pubDescrip;
                var pubDescripDiv = new HtmlGenericControl("div");
                pubDescripDiv.Attributes.Add("class", "description1");
                pubDescripDiv.Controls.Add(pubDescripLabel);
                var pubLinkLabel = new HtmlGenericControl("label");
                pubLinkLabel.InnerHtml = pubLink;
                var pubLinkDiv = new HtmlGenericControl("div");
                pubLinkDiv.Attributes.Add("class", "linkTitle");
                pubLinkDiv.Controls.Add(pubLinkLabel);
                var pubHorizontal = new HtmlGenericControl("div");
                pubHorizontal.Attributes.Add("class", "horizontal");
                var pubText = new HtmlGenericControl("div");
                pubText.Attributes.Add("class", "text");
                pubText.Controls.Add(pubTitleDiv);
                pubText.Controls.Add(pubDescripDiv);
                pubText.Controls.Add(pubLinkDiv);
                pubText.Controls.Add(pubHorizontal);
                pubInfoItem.Controls.Add(pubText);
                if (countP >= 0)
                    publicationsSection.Controls.Add(pubInfoItem);
                else
                {
                    more4.Controls.Add(pubInfoItem);
                    publicationsSection.Controls.Add(more4);

                }
            }
            if (countP == 0 || countP > 0)
                publicationsSection.Controls.Remove(buttonMore4);

            if (countP < 0)
            {
                publicationsSection.Controls.Add(buttonMore4);

            }
            con.Close();
            //////////////////////////////////////////////////////////
            con.Open();
            SqlCommand cmd7 = new SqlCommand("getActivities", con);
            cmd7.CommandType = System.Data.CommandType.StoredProcedure;
            SqlParameter instrA = new SqlParameter("@instID", id);
            cmd7.Parameters.Add(instrA);
            SqlDataReader reader7 = cmd7.ExecuteReader();
            string actDescrip = "";
            string actLoc = "";
            int countA = 3;
            while (reader7.Read())
            {
                countA--;
                String[] actStart = (reader7.GetValue(0).ToString()).Split(' ');
                String[] actEnd = (reader7.GetValue(1).ToString()).Split(' ');
                actDescrip = reader7.GetValue(2).ToString();
                actLoc = reader7.GetValue(3).ToString();
                var actStartLabel = new HtmlGenericControl("label");
                actStartLabel.Attributes.Add("class", "date");
                actStartLabel.InnerHtml = actStart[0];
                var actToLabel = new HtmlGenericControl("label");
                actToLabel.Attributes.Add("class", "date");
                actToLabel.InnerHtml = "to";
                var actEndLabel = new HtmlGenericControl("label");
                actEndLabel.Attributes.Add("class", "date");
                actEndLabel.InnerHtml = actEnd[0];
                var actDateDiv = new HtmlGenericControl("div");
                actDateDiv.Attributes.Add("class", "dateDiv");
                actDateDiv.Controls.Add(actStartLabel);
                actDateDiv.Controls.Add(actToLabel);
                actDateDiv.Controls.Add(actEndLabel);
                var actInfoItem = new HtmlGenericControl("div");
                actInfoItem.Attributes.Add("class", "infoItem");
                actInfoItem.Controls.Add(actDateDiv);
                var actVertical = new HtmlGenericControl("div");
                actVertical.Attributes.Add("class", "vertical");
                actInfoItem.Controls.Add(actVertical);
                var actLocLabel = new HtmlGenericControl("label");
                actLocLabel.InnerHtml = actLoc;
                var actLocDiv = new HtmlGenericControl("div");
                actLocDiv.Attributes.Add("class", "university");
                actLocDiv.Controls.Add(actLocLabel);
                var actDescripLabel = new HtmlGenericControl("label");
                actDescripLabel.InnerHtml = actDescrip;
                var actDescripDiv = new HtmlGenericControl("div");
                actDescripDiv.Attributes.Add("class", "description");
                actDescripDiv.Controls.Add(actDescripLabel);
                var actHorizontal = new HtmlGenericControl("div");
                actHorizontal.Attributes.Add("class", "horizontal");
                var actText = new HtmlGenericControl("div");
                actText.Attributes.Add("class", "text");
                actText.Controls.Add(actLocDiv);
                actText.Controls.Add(actDescripDiv);
                actText.Controls.Add(actHorizontal);
                actInfoItem.Controls.Add(actText);
                if (countA >= 0)
                    activitySection.Controls.Add(actInfoItem);
                else
                {
                    more5.Controls.Add(actInfoItem);
                    activitySection.Controls.Add(more5);
                
                }
            }
            if (countA == 0 || countA > 0)
                activitySection.Controls.Remove(buttonMore5);

            if (countA < 0)
            {
                activitySection.Controls.Add(buttonMore5);
            }
            con.Close();
        }
        protected void toLogin(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
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