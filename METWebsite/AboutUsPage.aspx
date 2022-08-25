<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutUsPage.aspx.cs" Inherits="METWebsite.AboutUsPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link  rel="stylesheet" href="./StyleSheets/AboutUs.css"/>

</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
            
                            <img class="logo" src="./images/topBarImages/GUC-logo 2.svg" />
           
           
                            <img class="bar" src="./images/topBarImages/bar.svg"/>
            
          
                            <label class="label1">Faculty of Media Engineering & Technology</label>
            
                    <asp:Button ID="Button1" CssClass="login" runat="server" Text="Login"  />
            
        </div>
        <div class="navbar">
            <div >
                <img src="images/topBarImages/home.svg" alt="Alternate Text" class="navimg" />
                                    <asp:Button Text="Home" runat="server" CssClass="navbtn" OnClick="toHome" />
            </div>
                <div>
                <img src="images/topBarImages/course.svg" alt="Alternate Text"class="navimg"/>
                                    <asp:Button Text="Courses" runat="server" CssClass="navbtn" OnClick="toCourses" />
            </div>
                <div>
                <img src="images/topBarImages/staff.svg" alt="Alternate Text" class="navimg"/>
                                    <asp:Button Text="Staff" runat="server" CssClass="navbtn" OnClick="toStaff" />
            </div>
                <div >
                <img src="images/topBarImages/studactiv.svg" alt="Alternate Text"class="navimg" />
                                    <asp:Button Text="Student Activity" runat="server" CssClass="navbtn" OnClick="toStudentActiv" />
            </div>
                <div >
                <img src="images/topBarImages/Alumni.svg" alt="Alternate Text"class="navimg2" />
                                    <asp:Button Text="Alumni" runat="server" CssClass="navbtn" OnClick="toAlumni" />
            </div>
                <div >
                <img src="images/topBarImages/about_red.svg" alt="Alternate Text" class="navimg3" />
                                    <asp:Button Text="About Us" runat="server" CssClass="navbtn"  />
            </div>
           
            
        </div>
        <div class="flex-container">
        <div class="metinfo">
            <img class="whyMETimg" src="./images/aboutUsPageImages/WhyMET.svg" />
        </div>
             <div class="infodiv">
                 <label class="label2"> ❝ Media Engineering and Technology aims at the evolving field of nearly all aspects of information and multimedia processing. The study program in Media Engineering and Technology rests on the same fundamentals as for Information Technology, i.e., mathematics, physics, electronics, computer science, communications, and their related methodologies, with specialization and extension to media technologies such as voice, audio and video, multimedia, media design, information retrieval and representation concepts. ❞
</label>
            </div>
            <div class="qoutediv">
                <label class="label3">
                    <br /> Prof. Dr. Hans Peter Grossmann
                    <br />GUC Founding Dean,
                    <br />Faculty of Media Engineering and Technology
                    <br /> 
                    <br /> 
                </label>
            </div>
                <div class="navbar2">
            <div class="AboutNav">
                <asp:Label Text="CSEN Program" runat="server" />
            </div>
                        <div class="AboutNav">
                <asp:Label Text="CSEN Program" runat="server" />
            </div>
                             <div class="AboutNav">
                <asp:Label Text="DMET Program" runat="server" />
            </div>
                             <div class="AboutNav">
                <asp:Label Text="Degrees" runat="server" />
            </div>
                             <div class="AboutNav">
                <asp:Label Text="Career Paths" runat="server" />
            </div>
           
            
        </div>
            <div class="label4c">
                
                     <p class="aboutH">
              Computer Science and Engineering
  <span style="color: #f5d243">(</span>

  <span style="color: #999999">CSEN</span> 
    <span style="color: #f5d243">)</span>

</p>

            </div>
            <div class="p1">
                <p>The CSEN Department conducts research in areas such as Human Computation, Networking, and Reconfigurable Computing. Human computation is an emerging area of multidisciplinary research. It includes research in fields such as Logic & Cognitive Systems, Constrained Programming, Game with a Purpose, and HCI. The area draws on insights from computer science, complexity theory, psychology, economics, engineering, machine learning, and many other disciplines to explore the computational potential of systems in which humans and machines collaborate to solve problems. Networking research strives to realize the full potential of not only next generation wireless networks but also Internet of Things (IoT) as well as to explore energy efficiency in different types of networks.</p>
            </div>
            <div class="p2">
                <p>This department is composed of 5 research groups, namely:
</p>
            </div>
            <div class"list">
                <ul class="listItem">
  <li >Logic and Cognitive Systems
</li>
  <li >Constrained Programming</li>
  <li >Game with a Purpose</li>
   <li >HCI</li>
  <li >Next Generation WANs</li>

</ul>
            </div>
            <div class="yellowbar">
                <img class="center" src="./images/aboutUsPageImages/yellowbar.svg" />

            </div>
            <div class="label4c">
                
                     <p class="aboutH">
              Digital Media Engineering and Technology 
  <span style="color: #f5d243">(</span>

  <span style="color: #999999">DMET</span> 
    <span style="color: #f5d243">)</span>

</p>

            </div>
            <div class="p1">
                <p>The DMET Department conducts research in areas such as Speech and Audio Signal Processing, Digital Image and Video Processing, and Computer Graphics & Vision. Speech processing refers to analysis, synthesis and recognition of speech signals. It is playing a key role in the state-of-art digital speech communication and multimedia services. While Internet and wireless telephony is expected to remain one of the most important application for several years to come, the use of speech processing applications, such as Automatic Speech Recognition (ASR), Text-to-Speech Synthesis (TTS), speaker identification/verification, emotion and mood analysis, is expected to increase in multimedia-rich scenarios. Digital image and video processing has become an important enabling technology for many applications including digital multimedia services over the wired and wireless Internet, digital surveillance, smart homes/vehicles/environments, digital cinema, HDTV and HD-DVD. Computer graphics is mainly concerned with creation, processing and rendering of 3D digital scene representations and object models. These representations can be purely computer-generated or a combination of graphical models and real world images and videos registered together using 3D computer vision. Vision technologies can create replica of real world, not only the geometry and appearance of objects and surfaces but also their motion and behavior.</p>
            </div>
            <div class="p2">
                <p>This department is composed of 3 research groups, namely:
</p>
            </div>
            <div class"list">
                <ul class="listItem">
  <li >Audio & Speech Signal Processing
</li>
  <li >Image And Video Processing</li>
  <li >Computer Vision & Graphics</li>
  

</ul>
            </div>
            <div class="yellowbar">
                <img class="center" src="./images/aboutUsPageImages/yellowbar.svg" />

            </div>
            <div>
                <p class="aboutH">
                    Degrees
                </p>
            </div>
            <div>
                <p class="p1">
                    The Faculty of Media Engineering and Technology is offering an International Bachelor program. This program lasts for 8 semesters. The degree that will be issued is a Bachelor of Science in Media Engineering and Technology.
                    <br />
                    <br />
The international bachelor enables the students to enter a International Master Program. The Master programs lasts for three semesters and the degree that will be issued is a Master of Science in Media Engineering and Technology.
                    <br />
                      <br />

According to the law in Egypt demanding at least 10 semesters as requirement for the Egyptian Bachelor in Engineering, a student can get the Egyptian Bachelor after another year of his / her study. This year is considered to be the first year (2 terms) in the study program towards getting the International Master.
                    <br />
                    <br />
As for international accreditation, the Faculty of Media Engineering and Technology at the GUC received the accreditation from the Accreditation Certification and Quality Assurance Institute (ACQUIN) for both Bachelor and Master programs on the 19th of September, 2006. These degree programs are supported by the University of Stuttgart and the University of Ulm.
                </p>
            </div>
      <div class="yellowbar">
                <img class="center" src="./images/aboutUsPageImages/yellowbar.svg" />

            </div>
             <div>
                <p class="aboutH">
                    Career Paths
                </p>

            </div>
              <p class="p2">
              1
  <span style="color: #f5d243">)</span>

  CSEN

</p>
            <div>
                <p class="p1">
                     <span style="color: #999999">Computer Scientists</span>
                     : Computer scientists work as theorists, researchers, or inventors. Their jobs are distinguished by the higher level of theoretical expertise and innovation they apply to complex problems and the creation or application of new technology. Those employed by academic institutions work in areas ranging from complexity theory to hardware to programming-language design. Some work on multidisciplinary projects, such as developing and advancing uses of virtual reality, extending human-computer interaction, or designing robots. Their counterparts in private industry work in areas such as applying theory; developing specialized languages or information technologies; or designing programming tools, knowledge-based systems, or even computer games.
                    <br />
                    <br />
                     <span style="color: #999999">Database administrator (DBA)</span>
                     : Database administrators work with database management systems software and determine ways to organize and store data. They identify user requirements, set up computer databases, and test and coordinate modifications to the computer database systems. An organization’s database administrator ensures the performance of the system, understands the platform on which the database runs, and adds new users to the system. Because they also may design and implement system security, database administrators often plan and coordinate security measures. With the volume of sensitive data generated every second growing rapidly, data integrity, backup systems, and database security have become increasingly important aspects of the job of database administrators.
                    <br />
                    <br />
                     <span style="color: #999999">Application Programmer/Software Developer</span>
                     : Computer (or application) programmers (or software developers) write, test, and maintain the detailed instructions, called programs that computers must follow to perform their functions. Programmers also conceive, design, and test logical structures for solving problems by computer. Many technical innovations in programming—advanced computing technologies and sophisticated new languages and programming tools—have redefined the role of a programmer and elevated much of the programming work done today. Job titles and descriptions may vary, depending on the organization.
                    <br />
                    <br />
                     <span style="color: #999999">Software Engineer</span>
                    : Computer software engineers apply the principles and techniques of computer science, engineering, and mathematical analysis to the design, development, testing, and evaluation of the software and systems that enable computers to perform their many applications. Software engineers working in applications or systems development analyze users’ needs and design, construct, test, and maintain computer applications software or systems. Software engineers can be involved in the design and development of many types of software, including software for operating systems and network distribution, and compilers, which convert programs for execution on a computer. In programming, or coding, software engineers instruct a computer, line by line, how to perform a function. They also solve technical problems that arise. Software engineers must possess strong programming skills, but are more concerned with developing algorithms and analyzing and solving programming problems than with actually writing code.
                    <br />
                    <br />
                </p>
            </div>
                  <div class="yellowbar">
                <img class="center" src="./images/aboutUsPageImages/yellowbar.svg" />

            </div>
             <p class="p2">
              2
  <span style="color: #f5d243">)</span>

  DMET

</p>
            <div>
                <p class="p1">
                     <span style="color: #999999">Webmasters</span>
                     : Webmasters are responsible for all technical aspects of a Web site, including performance issues such as speed of access, and for approving the content of the site.
                    <br />
                    <br />
                     <span style="color: #999999">
Web developers/Web Designers</span>
                     : Internet developers or Web developers, also called Web designers, are responsible for day-to-day site creation and design. This includes programming in special languages that are called scripting languages.
                    <br />
                    <br />
                     <span style="color: #999999">
Computer Vision Systems Specialists</span>
                     : Vision systems specialists design, develop, integrate and test algorithms and software to extract useful information from still images or video sequences. They develop tools for processing 2D and 3D data. They analyze data for sensor performance evaluation and characterization. They provide modeling and simulation of vision systems and components. They work as part of the R&D; team performing functions including data gathering, report generation and preparation of demonstrations.

                    <br />
                    <br />
                     <span style="color: #999999">Multimedia Design Engineers</span>
                     : Multimedia Design Engineers develop multimedia applications, systems and products involving computer graphics and interactive computing such as computer-based systems for personal computers or CD-ROM applications. They incorporate software applications in multiple technology media systems, such as graphics, animation, text, and sound
                    <br />
                    <br />
                </p>
            </div>
            </div>
    </form>
</body>
</html>
