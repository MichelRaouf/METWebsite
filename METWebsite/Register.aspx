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
    <form id="form1" runat="server">
         <div class="header">

            <img class="logo" src="./images/topBarImages/GUC-logo 2.svg" />

            <img class="bar" src="./images/topBarImages/bar.svg" />


            <label class="label1">Faculty of Media Engineering & Technology</label>
             <button class="logout" runat="server" onserverclick="logOut_click">
                 <img class="logoutIcon" src="./images/InstructorHome/logout.svg" /><span class="logoutlabel">Log Out</span></></button>
        </div>
        <div id="Welcome_div" runat="server">
            
                 <label class="title" id="Welcome_label" runat="server" > Welcome!</label>
           
        </div>
        <h1 runat="server">Basic Info</h1>

        <div runat="server" id="bodyDiv" >
            <div class="columnInputs">
 <div class="col-3 input-effect">
        	<input class    ="effect-19" type="password" placeholder=" " required/>
            <label>new password</label>
            <span class="focus-border">
            	<i></i>
            </span>
        </div> 
            <div class="col-3 input-effect">
        	<input class="effect-19" type="password" placeholder=" " required/>
            <label>confirm new password</label>
            <span class="focus-border">
            	<i></i>
            </span>
        </div>
                </div>
            <div class="columnInputs">
 <div class="col-3 input-effect">
        	<input class="effect-19" type="text" placeholder=" " required/>
            <label>office</label>
            <span class="focus-border">
            	<i></i>
            </span>
        </div> 
            <div class="col-3 input-effect">
        	<input class="effect-19" type="text" placeholder=" "/>
            <label>fax number</label>
            <span class="focus-border">
            	<i></i>
            </span>
        </div>
                <div class="col-3 input-effect">
        	<input class="effect-19" type="text" placeholder=" "/>
            <label>phone number</label>
            <span class="focus-border">
            	<i></i>
            </span>
        </div>
                </div>
          <asp:Button CssClass="show-more" runat="server" Text="Next"  />
            </div>

       




        <div runat="server" id="bodyDiv2" >
            <div class="columnInputs">
 <div class="col-3 input-effect">
        	<input class="effect-19" type="date" placeholder=" " required/>
            <label>date of birth</label>
            <span class="focus-border">
            	<i></i>
            </span>
        </div> 
            <div class="col-3 input-effect">
        	<input class="effect-19" type="text"   placeholder=" " required/>
            <label>nationality</label>
            <span class="focus-border">
            	<i></i>
            </span>
        </div>
           
                </div>
            <div class="columnInputs">
                 <div class="col-3 input-effect">
        	<input class="effect-19" type="text"   placeholder=" " required/>
            <label>status</label>
            <span class="focus-border">
            	<i></i>
            </span>
        </div>
                <div class="col-3 input-effect">
        	<input class="effect-19" type="text"   placeholder=" " required/>
            <label>Language(s)</label>
            <span class="focus-border">
            	<i></i>
            </span>
        </div>
                </div> 

            <div class="columnInputs" style="column-gap : 20px;">
                <h2>Education</h2>
               
                 <div class="col-3 input-effect" style="width:35%" >
        	<input class="effect-19" type="month"   placeholder=" " required />
            <label>date</label>
            <span class="focus-border">
            	<i></i>
            </span>
        </div>
                <div class="col-3 input-effect" style="width:27%">
        	<input class="effect-19" type="text"   placeholder=" " required />
            <label>degree</label>
            <span class="focus-border">
            	<i></i>
            </span>
        </div>  
                <div class="col-3 input-effect" >
        	<input class="effect-19" type="text"   placeholder=" " required />
            <label>university</label>
            <span class="focus-border">
            	<i></i>
            </span>
        </div>
                  <div class="col-3 input-effect" >
        	<input class="effect-19" type="text"   placeholder=" " required />
            <label>description</label>
            <span class="focus-border">
            	<i></i>
            </span>
        </div>
                <hr style="width:80%" />
                <div class="col-3 input-effect" style="width:35%" >
        	<input class="effect-19" type="month"   placeholder=" " required />
            <label>date</label>
            <span class="focus-border">
            	<i></i>
            </span>
        </div>
                <div class="col-3 input-effect" style="width:27%">
        	<input class="effect-19" type="text"   placeholder=" " required />
            <label>degree</label>
            <span class="focus-border">
            	<i></i>
            </span>
        </div>  
                <div class="col-3 input-effect" >
        	<input class="effect-19" type="text"   placeholder=" " required />
            <label>university</label>
            <span class="focus-border">
            	<i></i>
            </span>
        </div>
                  <div class="col-3 input-effect" >
        	<input class="effect-19" type="text"   placeholder=" " required />
            <label>description</label>
            <span class="focus-border">
            	<i></i>
            </span>
        </div>
                <div style="width:100%"> <hr style="width:80%" />
                    <br />
                <h3 style="text-align : right; width:80%;">Add Education</h3></div> 
                </div>
            
            
            <div class="columnInputs" style="column-gap : 20px;">
                <h2>Employment</h2>
               
                 <div class="col-3 input-effect" style="width:31%" >
        	<input class="effect-19" type="month"   placeholder=" " required />
            <label>start date</label>
            <span class="focus-border">
            	<i></i>
            </span>
        </div>
                <div class="col-3 input-effect" style="width:31%">
        	<input class="effect-19" type="month"   placeholder=" " required />
            <label>end date</label>
            <span class="focus-border">
            	<i></i>
            </span>
        </div>  
                <div class="col-3 input-effect" >
        	<input class="effect-19" type="text"   placeholder=" " required />
            <label>position</label>
            <span class="focus-border">
            	<i></i>
            </span>
        </div> <div class="col-3 input-effect" >
        	<input class="effect-19" type="text"   placeholder=" " required />
            <label>university</label>
            <span class="focus-border">
            	<i></i>
            </span>
        </div>
                  <div class="col-3 input-effect" >
        	<input class="effect-19" type="text"   placeholder=" " required />
            <label>faculty/department</label>
            <span class="focus-border">
            	<i></i>
            </span>
        </div>
                <hr style="width:80%" />
                </div>
          <asp:Button CssClass="show-more" runat="server" Text="Next"  />

        </div>
    </form>
</body>
</html>
