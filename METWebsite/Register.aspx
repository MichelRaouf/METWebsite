<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="METWebsite.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="icon" href="./images/gucLogo.png"/>
    <link rel="stylesheet" href="./StyleSheets/InstructorHome.css" />
    <link rel="stylesheet" href="./StyleSheets/register.css" />
 
</head>
<body>

    <style>
        html,body{
            margin : 0;
            overflow-x : hidden;
      
        }
       
        .content{
            width : 50%;
            float : left;
            display : flex;
            
           
        }
        .container{
           width :400%;
          position : absolute;
           display : flex;
          flex-direction : row;
           align-items : flex-start;
           left : 0;
           transition : 400ms;
           left : 0%
        }
       
        .container.next{
            left : -100%;
          
        }
        .container.next.next2{
             left : -200%;
        }
        .singleEducation{
            display:contents
        }
        #interestsDiv{
            width :100%;
            display : flex;
            column-gap : 20px;
            row-gap : 5px;
            flex-wrap : wrap;

        }
    </style>
    <form id="form1" runat="server">
         <div class="header">

            <img class="logo" src="./images/topBarImages/GUC-logo 2.svg" />

            <img class="bar" src="./images/topBarImages/bar.svg" />


            <label class="label1">Faculty of Media Engineering & Technology</label>
             <button class="logout" runat="server" onserverclick="logOut_click" type="button" >
                 <img class="logoutIcon" src="./images/InstructorHome/logout.svg" /><span class="logoutlabel">Log Out</span></></button>
        </div>
        <div id="Welcome_div" runat="server">
            
                 <label class="title" id="Welcome_label" runat="server" ></label>
           
        </div>
        <h1 runat="server" id="subTitle">Basic Info</h1>
        <div id="container" runat="server" class="container">
            <div class="content">
        <div runat="server" class="bodyDiv" id="bodyDiv" >
            <div class="columnInputs" >
 <div class="col-3 input-effect">
        	<input  class="effect-19" type="password" placeholder=" "  id="newPass" runat="server"/>
            <label>new password</label>
            <span class="focus-border">
            	<i></i>
            </span>
        </div> 
            <div class="col-3 input-effect">
        	<input class="effect-19" type="password" placeholder=" "  id="newPassConfirm" runat="server"/>
            <label>confirm new password</label>
            <span class="focus-border">
            	<i></i>
            </span>
        </div>
                </div>
            <div class="columnInputs">
 <div class="col-3 input-effect">
        	<input class="effect-19" type="text" placeholder=" "  id="office" runat="server"/>
            <label>office</label>
            <span class="focus-border">
            	<i></i>
            </span>
        </div> 
            <div class="col-3 input-effect">
        	<input class="effect-19" type="text" placeholder=" " id="fax" runat="server"/>
            <label>fax number</label>
            <span class="focus-border">
            	<i></i>
            </span>
        </div>
                <div class="col-3 input-effect">
        	<input class="effect-19" type="text" placeholder=" " id="phone" runat="server"/>
            <label>phone number</label>
            <span class="focus-border">
            	<i></i>
            </span>
        </div>
                </div>
           
          <asp:Button CssClass="show-more" runat="server" Text="Next"  id="next1" />
            </div>
       </div>
            <div class="content">
        <div runat="server" class="bodyDiv" id="bodyDiv2" >
            <div class="columnInputs">
 <div class="col-3 input-effect">
        	<input class="effect-19" type="date" placeholder=" "  id="dob" runat="server"/>
            <label>date of birth</label>
            <span class="focus-border">
            	<i></i>
            </span>
        </div> 
            <div class="col-3 input-effect">
        	<input class="effect-19" type="text"   placeholder=" "  id="nationality" runat="server"/>
            <label>nationality</label>
            <span class="focus-border">
            	<i></i>
            </span>
        </div>
           
                </div>
            <div class="columnInputs">
                 <div class="col-3 input-effect">
        	<input class="effect-19" type="text"   placeholder=" "  id="status" runat="server"/>
            <label>status</label>
            <span class="focus-border">
            	<i></i>
            </span>
        </div>
                <div class="col-3 input-effect">
        	<input class="effect-19" type="text"   placeholder=" "  id="languages" runat="server"/>
            <label>Language(s)</label>
            <span class="focus-border">
            	<i></i>
            </span>
        </div>
                </div> 

            <div class="columnInputs" style="column-gap : 20px;">
                <h2>Education</h2>
                <div id="educations" runat="server"  style="display:contents">
                    <div  class="singleEducation">
                 <div class="col-3 input-effect" style="width:40%" >
        	<input class="effect-19" type="month"   placeholder=" " id="eudDate1" />
            <label>date</label>
            <span class="focus-border">
            	<i></i>
            </span>
        </div>
                <div class="col-3 input-effect" style="width:22%">
        	<input class="effect-19" type="text"   placeholder=" " id="eduDeg1" />
            <label>degree</label>
            <span class="focus-border">
            	<i></i>
            </span>
        </div>  
                <div class="col-3 input-effect" >
        	<input class="effect-19" type="text"   placeholder=" " id="eduUni1" />
            <label>university</label>
            <span class="focus-border">
            	<i></i>
            </span>
        </div>
                  <div class="col-3 input-effect" >
        	<input class="effect-19" type="text"   placeholder=" " id="eduDesc1" />
            <label>description</label>
            <span class="focus-border">
            	<i></i>
            </span>
        </div>
                <hr style="width:80%" />
                    </div>
                </div>
                
            <button class="addEdu" id="addEducation">
                <img src="./images/InstructorHome/blackPlus.svg"  /> <span>Add Education</span></button>

            </div> 
            <div class="columnInputs" style="column-gap : 20px;">
                <h2>Employment</h2>
                <div id="employments" runat="server"  style="display:contents">
                    <div  class="singleEducation">
                 <div class="col-3 input-effect" style="width:40%" >
        	<input class="effect-19" type="month"   placeholder=" " id="empSdate1" />
            <label>start date</label>
            <span class="focus-border">
            	<i></i>
            </span>
        </div>
                        <div class="col-3 input-effect" style="width:40%" >
        	<input class="effect-19" type="month"   placeholder=" " id="empEdate1"  />
            <label>end date</label>
            <span class="focus-border">
            	<i></i>
            </span>
        </div>
             
                <div class="col-3 input-effect" >
        	<input class="effect-19" type="text"   placeholder=" " id="empPos1" />
            <label>position</label>
            <span class="focus-border">
            	<i></i>
            </span>
        </div>
                        <div class="col-3 input-effect" >
        	<input class="effect-19" type="text"   placeholder=" " id="empUni1" />
            <label>university</label>
            <span class="focus-border">
            	<i></i>
            </span>
        </div>
                  <div class="col-3 input-effect" >
        	<input class="effect-19" type="text"   placeholder=" " id="empFac1" />
            <label>faculty/department</label>
            <span class="focus-border">
            	<i></i>
            </span>
        </div>
                <hr style="width:80%" />
                    </div>
                </div>
                
            <button class="addEdu" id="addEmployment" style="width:42.5%">
                <img src="./images/InstructorHome/blackPlus.svg"  /> <span>Add Employment</span></button>

            </div> 
            
           
          <asp:Button CssClass="show-more" runat="server" Text="Next" id="next2" type="button"/>

        </div>
                </div>
            <div class="content">
        <div runat="server" class="bodyDiv" id="bodyDiv3" >

         
            <div class="columnInputs" style="column-gap : 20px;">
                 
                <h2>Researches</h2>
                 <div style="width:65%; display:flex; flex-direction:column;row-gap : 10px; ">
                <div class="col-3 input-effect" style="width:100%">
        	<input class="effect-19" type="text" placeholder=" "  id="researchInterests" runat="server"/>
            <label>research intersts</label>
            <span class="focus-border"><i></i></span>   
        </div> 
            <div id="interestsDiv">
                <input type="hidden" runat="server" id="researchInterestsResults" value="" />
                     </div>
                    </div>
               <hr style="width:80%" />


                <div id="researches" runat="server"  style="display:contents">
                    <div  class="singleEducation">
                 <div class="col-3 input-effect"  >
        	<input class="effect-19" type="text"   placeholder=" "  />
            <label>title</label>
            <span class="focus-border">
            	<i></i>
            </span>
        </div>
              <div class="col-3 input-effect" >
        	<input class="effect-19" type="url"   placeholder=" "  />
            <label>link</label>
            <span class="focus-border">
            	<i></i>
            </span>
        </div>  
                 <div class="col-3 input-effect" >
        	<input class="effect-19" type="month"   placeholder=" "  />
            <label>date</label>
            <span class="focus-border">
            	<i></i>
            </span>
        </div>  
               
                  
                  
               

                <hr style="width:80%" />
                    </div>
                </div>
                
            <button class="addEdu" id="addResearch" style="width:35%">
                <img src="./images/InstructorHome/blackPlus.svg"  /> <span>Add Resaerch</span></button>

            </div> 
            <div class="columnInputs" style="column-gap : 20px;">
                <h2>Publications</h2>
                <div id="publications" runat="server"  style="display:contents">
                    <div  class="singleEducation">
                 <div class="col-3 input-effect"  >
        	<input class="effect-19" type="text"   placeholder=" "  />
            <label>title</label>
            <span class="focus-border">
            	<i></i>
            </span>
        </div>
                        <div class="col-3 input-effect" >
                      <textarea  rows="5"class="effect-19" type="text" style="width:89.5%"   placeholder=" "></textarea>
        	
            <label>description</label>
            <span class="focus-border">
            	<i></i>
            </span>
        </div>
                 <div class="col-3 input-effect" >
        	<input class="effect-19" type="number"   placeholder=" "  />
            <label>date</label>
            <span class="focus-border">
            	<i></i>
            </span>
        </div>  
               
                  
                  <div class="col-3 input-effect" >
        	<input class="effect-19" type="url"   placeholder=" "  />
            <label>link</label>
            <span class="focus-border">
            	<i></i>
            </span>
        </div>  
               

                <hr style="width:80%" />
                    </div>
                </div>
                
            <button class="addEdu" id="addPublication" style="width:40%">
                <img src="./images/InstructorHome/blackPlus.svg"  /> <span>Add Publication</span></button>

            </div>
            <div class="columnInputs" style="column-gap : 20px;">
                <h2>Activities</h2>
                <div id="activities" runat="server"  style="display:contents">
                    <div  class="singleEducation">
                 <div class="col-3 input-effect" style="width:40%" >
        	<input class="effect-19" type="month"   placeholder=" "  />
            <label>start date</label>
            <span class="focus-border">
            	<i></i>
            </span>
        </div>
                        <div class="col-3 input-effect" style="width:40%" >
        	<input class="effect-19" type="month"   placeholder=" "  />
            <label>end date</label>
            <span class="focus-border">
            	<i></i>
            </span>
        </div>
             
                <div class="col-3 input-effect" >
        	            <textarea  rows="5"class="effect-19" type="text" style="width:89.5%"   placeholder=" "></textarea>
            <label>description</label>
            <span class="focus-border">
            	<i></i>
            </span>
        </div>
                   
                  <div class="col-3 input-effect" >
        	<input class="effect-19" type="text"   placeholder=" "  />
            <label>location</label>
            <span class="focus-border">
            	<i></i>
            </span>
        </div>
                <hr style="width:80%" />
                    </div>
                </div>
                
            <button class="addEdu" id="addactivity" style="width:32%">
                <img src="./images/InstructorHome/blackPlus.svg"  /> <span>Add Activity</span></button>

            </div> 
            <div  class="columnInputs" >
            
            </div>
            
           
             

            






             






          <asp:Button CssClass="show-more" runat="server" Text="Next"  id="next3" />
            </div>
       </div>
            <div class="content">
            <div class="bodyDiv" id="bodyDiv4" style="flex-direction : column;align-items : flex-end;">

                <div class="avatar-upload">
        <div class="avatar-edit">
            <input type='file' id="imageUpload" accept=".png, .jpg, .jpeg" />
            <label for="imageUpload">
                <img src="./images/InstructorHome/upload.svg"  /> </label>
          
        </div>
        <div class="avatar-preview">
            <img src="https://pasrc.princeton.edu/sites/g/files/toruqf431/files/styles/freeform_750w/public/2021-03/blank-profile-picture-973460_1280.jpg?itok=QzRqRVu8" id="imagePreview" class="avatar-preview1"/>
        </div>
    </div>

<asp:Button CssClass="show-more" runat="server" Text="Finish"  id="Button1" onclick="finish"/>
            </div>
            </div>

                <script>
                    var imgupload = document.getElementById("imageUpload");
                    var imgprev = document.getElementById("imagePreview");

                    
                   
                    imgupload.onchange = evt => {
                        const [file] = imgupload.files
                        if (file) {
                            imgprev.src = URL.createObjectURL(file)
                        }
                    }
                </script>

                <style>



.avatar-upload {
  position: relative;
  max-width: 205px;
  margin: 50px auto;
}
.avatar-upload .avatar-edit {
  position: absolute;
  right: 12px;
  z-index: 1;
  top: 10px;
}
.avatar-upload .avatar-edit input {
  display: none;
}
.avatar-upload .avatar-edit input + label {
  display: flex;
  align-items : center;
  justify-content : center;
  width: 34px;
  height: 34px;
  margin-bottom: 0;
  border-radius: 100%;
  background: #FFFFFF;
  border: 1px solid transparent;
  box-shadow: 0px 2px 4px 0px rgba(0, 0, 0, 0.12);
  cursor: pointer;
  font-weight: normal;
  transition: all 0.2s ease-in-out;
}
.avatar-upload .avatar-edit input + label:hover {
  background: #f1f1f1;
  border-color: #d6d6d6;
}


.avatar-upload .avatar-preview {
  width: 192px;
  height: 192px;
  position: relative;
  border-radius: 100%;
  border: 6px solid #F8F8F8;
  box-shadow: 0px 2px 4px 0px rgba(0, 0, 0, 0.1);
}
.avatar-preview1{
 width: 192px;
  height: 192px;
  position: relative;
  border-radius: 100%;
}
.avatar-upload .avatar-preview > div {
  width: 100%;
  height: 100%;
  border-radius: 100%;
  background-size: cover;
  background-repeat: no-repeat;
  background-position: center;
}

                </style>

            </div>





        <div>
            <input type="hidden" runat="server" id="EdusC"  value="1" />
            <input type="hidden" runat="server" id="Edus" value="" />
            <input type="hidden" runat="server" id="EmpsC"  value="1" />
            <input type="hidden" runat="server" id="Emps" value="" />

        </div>





        <script>
            var researchInterests = document.getElementById("researchInterests");
            function myfunc(e) {
                if (e.key === 'Enter' && researchInterests.value != "") {
                    var interestsDiv = document.getElementById("interestsDiv");
                    let testbutton = document.createElement("button");
                    testbutton.innerHTML = researchInterests.value;
                    interestsDiv.appendChild(testbutton);
                    researchInterests.value = "";
                }
            }
            researchInterests.addEventListener("keypress", myfunc);  
        </script>

         <script>

             function myinput(type, placeholder,id, style = "") {
                 var col = document.createElement("div");
                 col.className = "col-3 input-effect";
                 col.style = style;
                 var input = document.createElement("input");
                 input.type = type;
                 input.id = id;
                 input.classList.add("effect-19");
                 input.placeholder = " ";
                 var label = document.createElement("label");
                 label.innerHTML = placeholder;
                 var span = document.createElement("span");
                 span.className = "focus-border";
                 var i = document.createElement("i");
                 span.appendChild(i);
                 col.appendChild(input);
                 col.appendChild(label);
                 col.appendChild(span);
                 this.div = col;
             }

             var educationsDiv = document.getElementById("educations")
             
             var addEdu = document.getElementById("addEducation");
             var eduCount = 2;
             addEdu.onclick = function (event) {
                 event.preventDefault();
                 let singleEduDiv = document.createElement("div");
                 singleEduDiv.classList.add("singleEducation");
                 const date = new myinput("month", "date", "eduDate" + eduCount, "width:40%");
                 const degree = new myinput("text", "degree", "eduDeg" + eduCount, "width:22%");
                 const university = new myinput("text", "university", "eduUni" + eduCount);
                 const description = new myinput("text", "description", "eduDesc" + eduCount);
                 let hr = document.createElement("hr");
                 hr.style = "width:80%";
                 singleEduDiv.appendChild(date.div);
                 singleEduDiv.appendChild(degree.div);
                 singleEduDiv.appendChild(university.div);
                 singleEduDiv.appendChild(description.div);
                 singleEduDiv.appendChild(hr);
                 educationsDiv.appendChild(singleEduDiv);
                 document.getElementById("EdusC").value = eduCount;
                 eduCount++;
                
                 
             }
             var employmentsDiv = document.getElementById("employments")
             var addEmp = document.getElementById("addEmployment")
             var empCount = 2;
             addEmp.onclick = function (event) {
                 event.preventDefault();
                 let singleEduDiv = document.createElement("div");
                 singleEduDiv.classList.add("singleEducation");
                 const startDate = new myinput("month", "start date", "empSdate" + empCount, "width:40%");
                 const endDate = new myinput("month", "end date", "empEdate" + empCount, "width:40%");
                 const position = new myinput("text", "position", "empPos" + empCount);
                 const university = new myinput("text", "university", "empUni" + empCount);
                 const faculty = new myinput("text", "faculty/department", "empFac" + empCount);
                 let hr = document.createElement("hr");
                 hr.style = "width:80%";
                 singleEduDiv.appendChild(startDate.div);
                 singleEduDiv.appendChild(endDate.div);
                 singleEduDiv.appendChild(position.div);
                 singleEduDiv.appendChild(university.div);
                 singleEduDiv.appendChild(faculty.div);
                 singleEduDiv.appendChild(hr);
                 employmentsDiv.appendChild(singleEduDiv);
                 document.getElementById("EmpsC").value = empCount;
                 empCount++;


             }

             var container = document.getElementById("container");
             var next = document.getElementById("next1");
             next.onclick = function (event) {
                 event.preventDefault();
                 container.classList.add("next");
             }
            
             var next2 = document.getElementById("next2");
             next2.onclick = function (event) {
                 event.preventDefault();
                 container.classList.add("next2");
                 var edus = document.getElementById("Edus");
                 for (let i = 1; i <= eduCount; i++) {
                     var date = document.getElementById("")
                     edus.value += document.getElementById("eduDate" + i+",");
                     edus.value += document.getElementById("eduDeg" + i+",");
                     edus.value += document.getElementById("eduUni" + i+",");
                     edus.value += document.getElementById("eduDesc" + i+",");
                 }
                 var emps = document.getElementById("Emps");
                 for (let i = 1; i <= empCount; i++) {
                     var date = document.getElementById("")
                     emps.value += document.getElementById("empSdate" + i+",");
                     emps.value += document.getElementById("empEdate" + i+",");
                     emps.value += document.getElementById("empPos" + i+",");
                     emps.value += document.getElementById("empUni" + i+",");
                     emps.value += document.getElementById("empUni" + i+",");
                     emps.value += document.getElementById("empFac" + i + ",");
                     
                 }


             }



           
             document.getElementById("next1").disabled = true;
             var bodydiv = document.getElementById("bodyDiv");
             const inputElements = bodydiv.querySelectorAll("input");
             
             for (let i = 0; i < inputElements.length; i++) {
                 inputElements[i].addEventListener('keyup', e => {
                     var flag = false;
                     for (let j = 0; j < inputElements.length; j++) {
                         if (inputElements[j].value == "") {
                             document.getElementById("next1").disabled = true;
                             flag = true;
                         }
                     }
                     if (!flag) {
                         document.getElementById("next1").disabled = false;

                     }

                     
                 });
             }
             document.getElementById("next2").disabled = true;
             var bodydiv2 = document.getElementById("bodyDiv2");
             const inputElement = bodydiv2.querySelectorAll("input");

            
             
             for (let i = 0; i < inputElement.length; i++) {
                 inputElement[i].addEventListener('keyup', e => {
                     var flag = false;
                     for (let j = 0; j < inputElement.length; j++) {
                         if (inputElement[j].value == "") {
                             document.getElementById("next2").disabled = true;
                             flag = true;
                         }
                     }
                     if (!flag) {
                         document.getElementById("next2").disabled = false;

                     }

                     
                 });
             }
             


         </script>



    </form>
</body>
</html>
