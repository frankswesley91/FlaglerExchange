<%@ Page Title="Your Profile" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="FlaglerExchange.Views.Profile" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">



  <style>
        html {
  font-size: 14px;
}

@media (min-width: 768px) {
  html {
    font-size: 16px;
  }
}

.btn:focus, .btn:active:focus, .btn-link.nav-link:focus, .form-control:focus, .form-check-input:focus {
  box-shadow: 0 0 0 0.1rem white, 0 0 0 0.25rem #258cfb;
}

html {
  position: relative;
  min-height: 100%;
  background-color: #fdb924;
}

body {
  margin-bottom: 60px;
  background-color: #9e2339;
  
}
 .title{
    font-family: 'Times New Roman', Times, serif;
    font-size: 55px;

       }
.slogan{
    font-family: 'Times New Roman', Times, serif;
    font-size: 25px;
}
nav.indexNav{
    background-color: #fdb924;
    overflow: hidden;
    font-family: 'Times New Roman', Times, serif;
    font-size: 24px;
}

nav ul.indexNavUL {
    list-style-type: none;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: space-around;
}

nav li.indexNavList{
    float: left;
}

nav li a.indexNava {
    display: block;
    color: black;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

nav li a.indexNava:hover{
    background-color: #9e2339;
    color: white;
}

.indexNav a {
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.indexNav a:hover, .indexNav a:focus {
    transform: translateY(-5px);
    box-shadow: 0 5px 15px rgba(0,0,0,0.3);
}
div#profile-container.container{
    display: flex; 
    justify-items: flex-end;
    padding-left: 90px; 
}

div#profile-image.item{
    display: inline-block; 
}

div#profileMainContent.container-fluid
{
    background-color: #9e2339;
}

h5{
    background-color: #fdb924;
}

#aboutMeTB {
    width: 100%; 
}


.profile-buttons {
   margin-top: 20px;
    padding: 10px;
    background-color: #fdb924;
    color: black;
    border:solid;
    border-radius: 10px;
    cursor: pointer;
    font-family: 'Times New Roman';
}

.profile-buttons:hover{
    background-color: #9e2339;
    color: white;
}

:root {
    background-color: #9e2339;
    --text-color: #333;
    --form-background: #f0f0f0;
    --form-text: #333;
}

/* Dark theme */
[data-theme="dark"] {
    background-color: #9e2339;
    --text-color: #ccc;
    --form-background: #444;
    --form-text: #ccc;
}

body {
    background-color: var(--background-color);
    color: var(--text-color);
    transition: background-color 0.3s, color 0.3s;
}


</style>

    <div class="text-center">
    <h1 class="title" style="color:white">Flagler Exchange</h1>
    <img src="/Images/Flagler.jpeg" alt="Flagler Logo"/>
    <p class="slogan"style="color:white">An easy platform to trade your items!</p>
</div>

<!--Basic Nav bar allowing for the navigation to different parts of the site (THIS WILL BE CHANGED OBVIOUSLY)-->
<nav class="indexNav">
    <ul class="indexNavUL">
        <li class="indexNavList">
            <a href="/Views/Home.aspx">
            <img src="/Images/FlaglerExchangeLogo.png" style="border-style:groove" width="80" height="75" alt="Home">
            </a>
        </li>
        <li class="indexNavList" style="border-style:double; border-color:#9e2339; border-width:thick"><a class="indexNava" href="/Views/Listing.aspx">My Listings</a></li>
        <li class="indexNavList" style="border-style:double; border-color:#9e2339; border-width:thick"><a class="indexNava" href="/Views/Profile.aspx">Profile</a></li>
        <li class="indexNavList" style="border-style:double; border-color:#9e2339; border-width:thick"><a class="indexNava" href="/Views/Login.aspx">Logout</a></li>
    </ul>
</nav>



<!---------------------------------------------- Main Body Content for this page--------------------------------------->
   <br />

   <div id="profileMainContent" class ="container-fluid", style="background-color: white; align-content: normal; padding-left: 150px; font-family: 'Times New Roman'; "> 
       <div class ="row" >
           <div class="col-lg-9", style="padding-top: 10px;">
               <h5 class="justify-content-center", style="border: solid">Contact Information</h5>
               <div class="card">
                   <div class="card-body"> 
                       <table class="container-fluid" id="contact-table"; style="border: solid;">
                           <tr>
                               <td><strong>Name: </strong></td>
                               <td>
                                   <asp:TextBox ID="nameTB" runat="server" Text="BAWK" BorderStyle="None"></asp:TextBox>
                               </td>
                           </tr>
                           <tr>
                               <td><strong>Email: </strong></td>
                               <td>
                                   <asp:TextBox ID="emailTB" runat="server" Text="lastname123@flagler.edu" BorderStyle="None" TextMode="Email"></asp:TextBox>
                               </td>
                           </tr>
                           <tr>
                               <td><strong>Phone: </strong></td>
                               <td>
                                   <asp:TextBox ID="phoneTB" runat="server" Text="(123)-456-7890" BorderStyle="None" TextMode="Phone"></asp:TextBox>
                               </td>
                           </tr>
                           <tr>
                               <td><strong>Off campus?: </strong></td>
                               <td>
                                   <asp:RadioButtonList ID="onCampusRBList" runat="server" RepeatDirection="Horizontal" >
                                       <asp:ListItem Value="1">Yes</asp:ListItem>
                                       <asp:ListItem Value="0" Selected="True">No</asp:ListItem>
                                   </asp:RadioButtonList>

                               </td>
                           </tr>
                           <tr>
                               <td><strong>Address: </strong></td>
                               <td>
                                   <asp:TextBox ID="addressTB" runat="server" Text="74 King Street, St. Augustine FL 32080" BorderStyle="None"></asp:TextBox>
                               </td>
                           </tr>
                       </table>
                   </div>
               </div>
           </div>
           <div id="profile-container", class ="col-sm-2" >
               <div class="offset-md-2" style="margin-left: 50px; padding-top: 10px;">
                   <!-- change this to an asp:Image tag at some point -->
                   <!-- <img id="profile-image", style="justify-self: right; width: 150px; height:150px;" src="../Images/FlaglerExchangeLogo.png" /> -->
                   <asp:Image ID="profileImage" runat="server" src="../Images/FlaglerExchangeLogo.png" Width="150px" Height="150px" />
                   <asp:FileUpload ID="changeProfileUploadButton"  runat="server" AllowMultiple ="false" Enabled="false" CssClass="custom-file-upload"/>
                   
                   <asp:Button  CssClass="profile-buttons" ID="editProfileButton" runat="server" Text="Edit Profile" OnClick="editProfileButton_Click" />
               </div>
           </div>
           <div class ="row">
               <div class="col-lg-4", style ="padding-top: 10px;">
                   <h5 style="border: solid;">About me: </h5>
                   <asp:TextBox ID="aboutMeTB" runat="server" TextMode="MultiLine" Width="1000px" Font-Size="Small">This is where the &quot;about me&quot; section will go, where users can type a quick bio about themselves that is visible to others. </asp:TextBox>
               </div>
               <div class="col-lg-5" id="majorMinorContainer" runat="server" style="padding-top: 10px;">
                  <h5 style="border: solid;"> Major(s)/Minor(s)</h5>
                       <table class="col-sm">
                       <tr>
                           <td><strong>Major(s): </strong></td>
                           <td style="border:groove">
                               <table>
                                   <tr>
                                       <td>
                                           <asp:DropDownList ID="majorDDList1" runat="server" Enabled="false" BorderStyle="None" Width="190px">
                                               <asp:ListItem Value="default">--Please Select--</asp:ListItem>
                                               <asp:ListItem Value="ACCmaj1">Accounting</asp:ListItem>
                                               <asp:ListItem Value="ANTmaj1">Anthropology</asp:ListItem>
                                               <asp:ListItem Value="ARTmaj1">Art History</asp:ListItem>
                                               <asp:ListItem Value="BIOmaj1">Biology</asp:ListItem>
                                               <asp:ListItem Value="BUSmaj1">Business Adminsitration</asp:ListItem>
                                               <asp:ListItem Value="CINmaj1">Cinematic Arts</asp:ListItem>
                                               <asp:ListItem Value="NASmaj1">Coastal Environmental Science</asp:ListItem>
                                               <asp:ListItem Value="CISmaj1">Computer Information Systems</asp:ListItem>
                                               <asp:ListItem Value="CRImaj1">Criminology</asp:ListItem>
                                               <asp:ListItem Value="DASmaj1">Data Science</asp:ListItem>
                                               <asp:ListItem Value="DMJmaj1">Digital Media Production and Journalism</asp:ListItem>
                                               <asp:ListItem Value="ECOmaj1">Economics</asp:ListItem>
                                               <asp:ListItem Value="DEDmaj1">Deaf Education</asp:ListItem>
                                               <asp:ListItem Value="EEDmaj1">Elementary Education</asp:ListItem>
                                               <asp:ListItem Value="ENGmaj1">English</asp:ListItem>
                                               <asp:ListItem Value="FINmaj1">Finance</asp:ListItem>
                                               <asp:ListItem Value="FARmaj1">Fine Arts</asp:ListItem>
                                               <asp:ListItem Value="GDSmaj1">Graphic Design</asp:ListItem>
                                               <asp:ListItem Value="HISmaj1">History</asp:ListItem>
                                               <asp:ListItem Value="HTMmaj1">Hospitality and Tourism Management</asp:ListItem>
                                               <asp:ListItem Value="IBUmaj1">International Busiess</asp:ListItem>
                                               <asp:ListItem Value="INTmaj1">International Studiees</asp:ListItem>
                                               <asp:ListItem Value="LBAmaj1">Liberal Arts</asp:ListItem>
                                               <asp:ListItem Value="MARmaj1">Marketing</asp:ListItem>
                                               <asp:ListItem Value="MATmaj1">Mathematics</asp:ListItem>
                                               <asp:ListItem Value="MSTmaj1">Media Studies</asp:ListItem>
                                               <asp:ListItem Value="PHImaj1">Philosophy and Religion</asp:ListItem>
                                               <asp:ListItem Value="POSmaj1">Political Science</asp:ListItem>
                                               <asp:ListItem Value="PSYmaj1">Psychology</asp:ListItem>
                                               <asp:ListItem Value="PUBmaj1">Public History</asp:ListItem>
                                               <asp:ListItem Vaule="PHImaj1">Public Relations</asp:ListItem>
                                               <asp:ListItem Value="SEDmaj1">Secondary Education</asp:ListItem>
                                               <asp:ListItem Value="SENmaj1">Social Entrepreneurship</asp:ListItem>
                                               <asp:ListItem Value="SOCmaj1">Sociology</asp:ListItem>
                                               <asp:ListItem Value="SPAmaj1">Spanish</asp:ListItem>
                                               <asp:ListItem Value="SPMmaj1">Sports Management</asp:ListItem>
                                               <asp:ListItem Value="THEmaj1">Theater Arts</asp:ListItem>
                                           </asp:DropDownList>
                                       </td>
                                       <td>
                                           <asp:DropDownList ID="majorDDList2" runat="server" Enabled="false" BorderStyle="None" Width="190px">
                                                    <asp:ListItem Value="default">--Please Select--</asp:ListItem>
                                                    <asp:ListItem Value="ACCmaj2">Accounting</asp:ListItem>
                                                    <asp:ListItem Value="ANTmaj2">Anthropology</asp:ListItem>
                                                    <asp:ListItem Value="ARTmaj2">Art History</asp:ListItem>
                                                    <asp:ListItem Value="BIOmaj2">Biology</asp:ListItem>
                                                    <asp:ListItem Value="BUSmaj2">Business Adminsitration</asp:ListItem>
                                                    <asp:ListItem Value="CINmaj2">Cinematic Arts</asp:ListItem>
                                                    <asp:ListItem Value="NASmaj2">Coastal Environmental Science</asp:ListItem>
                                                    <asp:ListItem Value="CISmaj2">Computer Information Systems</asp:ListItem>
                                                    <asp:ListItem Value="CRImaj2">Criminology</asp:ListItem>
                                                    <asp:ListItem Value="DASmaj2">Data Science</asp:ListItem>
                                                    <asp:ListItem Value="DMJmaj2">Digital Media Production and Journalism</asp:ListItem>
                                                    <asp:ListItem Value="ECOmaj2">Economics</asp:ListItem>
                                                    <asp:ListItem Value="DEDmaj2">Deaf Education</asp:ListItem>
                                                    <asp:ListItem Value="EEDmaj2">Elementary Education</asp:ListItem>
                                                    <asp:ListItem Value="ENGmaj2">English</asp:ListItem>
                                                    <asp:ListItem Value="FINmaj2">Finance</asp:ListItem>
                                                    <asp:ListItem Value="FARmaj2">Fine Arts</asp:ListItem>
                                                    <asp:ListItem Value="GDSmaj2">Graphic Design</asp:ListItem>
                                                    <asp:ListItem Value="HISmaj2">History</asp:ListItem>
                                                    <asp:ListItem Value="HTMmaj2">Hospitality and Tourism Management</asp:ListItem>
                                                    <asp:ListItem Value="IBUmaj2">International Busiess</asp:ListItem>
                                                    <asp:ListItem Value="INTmaj2">International Studiees</asp:ListItem>
                                                    <asp:ListItem Value="LBAmaj2">Liberal Arts</asp:ListItem>
                                                    <asp:ListItem Value="MARmaj2">Marketing</asp:ListItem>
                                                    <asp:ListItem Value="MATmaj2">Mathematics</asp:ListItem>
                                                    <asp:ListItem Value="MSTmaj2">Media Studies</asp:ListItem>
                                                    <asp:ListItem Value="PHImaj2">Philosophy and Religion</asp:ListItem>
                                                    <asp:ListItem Value="POSmaj2">Political Science</asp:ListItem>
                                                    <asp:ListItem Value="PSYmaj2">Psychology</asp:ListItem>
                                                    <asp:ListItem Value="PUBmaj2">Public History</asp:ListItem>
                                                    <asp:ListItem Vaule="PHImaj2">Public Relations</asp:ListItem>
                                                    <asp:ListItem Value="SEDmaj2">Secondary Education</asp:ListItem>
                                                    <asp:ListItem Value="SENmaj2">Social Entrepreneurship</asp:ListItem>
                                                    <asp:ListItem Value="SOCmaj2">Sociology</asp:ListItem>
                                                    <asp:ListItem Value="SPAmaj2">Spanish</asp:ListItem>
                                                    <asp:ListItem Value="SPMmaj2">Sports Management</asp:ListItem>
                                                    <asp:ListItem Value="THEmaj2">Theater Arts</asp:ListItem> 
                                                    <asp:ListItem Value="NONE">N/A</asp:ListItem>
                                           </asp:DropDownList>
                                       </td>
                                   </tr>
                               </table>
                           </td>
                       </tr>
                       <tr>
                           <td><strong>Minor(s): </strong></td>
                           <td style="border: groove">
                                <table>
                                   <tr>
                                       <td>
                                           <asp:DropDownList ID="minorDDList1" runat="server" Enabled="false" BorderStyle="None" Width="190px">
                                                <asp:ListItem Value="default">--Please Select--</asp:ListItem>
                                                <asp:ListItem Value="ACCmin1">Accounting</asp:ListItem>
                                                <asp:ListItem Value="ANTmin1">Anthropology</asp:ListItem>
                                                <asp:ListItem Value="ARTmin1">Art History</asp:ListItem>
                                                <asp:ListItem Value="BIOmin1">Biology</asp:ListItem>
                                                <asp:ListItem Value="BUSmin1">Business Adminsitration</asp:ListItem>
                                                <asp:ListItem Value="CINmin1">Cinematic Arts</asp:ListItem>
                                                <asp:ListItem Value="NASmin1">Coastal Environmental Science</asp:ListItem>
                                                <asp:ListItem Value="CISmin1">Computer Information Systems</asp:ListItem>
                                                <asp:ListItem Value="CRImin1">Criminology</asp:ListItem>
                                                <asp:ListItem Value="DASmin1">Data Science</asp:ListItem>
                                                <asp:ListItem Value="DMJmin1">Digital Media Production and Journalism</asp:ListItem>
                                                <asp:ListItem Value="ECOmin1">Economics</asp:ListItem>
                                                <asp:ListItem Value="DEDmin1">Deaf Education</asp:ListItem>
                                                <asp:ListItem Value="EEDmin1">Elementary Education</asp:ListItem>
                                                <asp:ListItem Value="ENGmin1">English</asp:ListItem>
                                                <asp:ListItem Value="FINmin1">Finance</asp:ListItem>
                                                <asp:ListItem Value="FARmin1">Fine Arts</asp:ListItem>
                                                <asp:ListItem Value="GDSmin1">Graphic Design</asp:ListItem>
                                                <asp:ListItem Value="HISmin1">History</asp:ListItem>
                                                <asp:ListItem Value="HTMmin1">Hospitality and Tourism Management</asp:ListItem>
                                                <asp:ListItem Value="IBUmin1">International Busiess</asp:ListItem>
                                                <asp:ListItem Value="INTmin1">International Studiees</asp:ListItem>
                                                <asp:ListItem Value="LBAmin1">Liberal Arts</asp:ListItem>
                                                <asp:ListItem Value="MARmin1">Marketing</asp:ListItem>
                                                <asp:ListItem Value="MATmin1">Mathematics</asp:ListItem>
                                                <asp:ListItem Value="MSTmin1">Media Studies</asp:ListItem>
                                                <asp:ListItem Value="PHImin1">Philosophy and Religion</asp:ListItem>
                                                <asp:ListItem Value="POSmin1">Political Science</asp:ListItem>
                                                <asp:ListItem Value="PSYmin1">Psychology</asp:ListItem>
                                                <asp:ListItem Value="PUBmin1">Public History</asp:ListItem>
                                                <asp:ListItem Vaule="PHImin1">Public Relations</asp:ListItem>
                                                <asp:ListItem Value="SEDmin1">Secondary Education</asp:ListItem>
                                                <asp:ListItem Value="SENmin1">Social Entrepreneurship</asp:ListItem>
                                                <asp:ListItem Value="SOCmin1">Sociology</asp:ListItem>
                                                <asp:ListItem Value="SPAmin1">Spanish</asp:ListItem>
                                                <asp:ListItem Value="SPMmin1">Sports Management</asp:ListItem>
                                                <asp:ListItem Value="THEmin1">Theater Arts</asp:ListItem>
                                                <asp:ListItem Value="NONE">N/A</asp:ListItem>
                                           </asp:DropDownList>

                                       </td>
                                       <td>
                                           <asp:DropDownList ID="minorDDList2" runat="server" Enabled="false" BorderStyle="None" Width="190px">
                                                    <asp:ListItem Value="default">--Please Select--</asp:ListItem>
                                                    <asp:ListItem Value="ACCmin2">Accounting</asp:ListItem>
                                                    <asp:ListItem Value="ANTmin2">Anthropology</asp:ListItem>
                                                    <asp:ListItem Value="ARTmin2">Art History</asp:ListItem>
                                                    <asp:ListItem Value="BIOmin2">Biology</asp:ListItem>
                                                    <asp:ListItem Value="BUSmin2">Business Adminsitration</asp:ListItem>
                                                    <asp:ListItem Value="CINmin2">Cinematic Arts</asp:ListItem>
                                                    <asp:ListItem Value="NASmin2">Coastal Environmental Science</asp:ListItem>
                                                    <asp:ListItem Value="CISmin2">Computer Information Systems</asp:ListItem>
                                                    <asp:ListItem Value="CRImin2">Criminology</asp:ListItem>
                                                    <asp:ListItem Value="DASmin2">Data Science</asp:ListItem>
                                                    <asp:ListItem Value="DMJmin2">Digital Media Production and Journalism</asp:ListItem>
                                                    <asp:ListItem Value="ECOmin2">Economics</asp:ListItem>
                                                    <asp:ListItem Value="DEDmin2">Deaf Education</asp:ListItem>
                                                    <asp:ListItem Value="EEDmin2">Elementary Education</asp:ListItem>
                                                    <asp:ListItem Value="ENGmin2">English</asp:ListItem>
                                                    <asp:ListItem Value="FINmin2">Finance</asp:ListItem>
                                                    <asp:ListItem Value="FARmin2">Fine Arts</asp:ListItem>
                                                    <asp:ListItem Value="GDSmin2">Graphic Design</asp:ListItem>
                                                    <asp:ListItem Value="HISmin2">History</asp:ListItem>
                                                    <asp:ListItem Value="HTMmin2">Hospitality and Tourism Management</asp:ListItem>
                                                    <asp:ListItem Value="IBUmin2">International Busiess</asp:ListItem>
                                                    <asp:ListItem Value="INTmin2">International Studiees</asp:ListItem>
                                                    <asp:ListItem Value="LBAmin2">Liberal Arts</asp:ListItem>
                                                    <asp:ListItem Value="MARmin2">Marketing</asp:ListItem>
                                                    <asp:ListItem Value="MATmin2">Mathematics</asp:ListItem>
                                                    <asp:ListItem Value="MSTmin2">Media Studies</asp:ListItem>
                                                    <asp:ListItem Value="PHImin2">Philosophy and Religion</asp:ListItem>
                                                    <asp:ListItem Value="POSmin2">Political Science</asp:ListItem>
                                                    <asp:ListItem Value="PSYmin2">Psychology</asp:ListItem>
                                                    <asp:ListItem Value="PUBmin2">Public History</asp:ListItem>
                                                    <asp:ListItem Vaule="PHImin2">Public Relations</asp:ListItem>
                                                    <asp:ListItem Value="SEDmin2">Secondary Education</asp:ListItem>
                                                    <asp:ListItem Value="SENmin2">Social Entrepreneurship</asp:ListItem>
                                                    <asp:ListItem Value="SOCmin2">Sociology</asp:ListItem>
                                                    <asp:ListItem Value="SPAmin2">Spanish</asp:ListItem>
                                                    <asp:ListItem Value="SPMmin2">Sports Management</asp:ListItem>
                                                    <asp:ListItem Value="THEmin2">Theater Arts</asp:ListItem>
                                                    <asp:ListItem Value="NONE">N/A</asp:ListItem>
                                           </asp:DropDownList>
                                       </td>
                                   </tr>
                               </table>
                           </td>
                       </tr>
                   </table>
               </div>
               <div class ="col-sm-2 offset-md-3" style="padding-top: 10px; margin-left: 25px">
                       <h5 style="border: solid">Affiliation</h5>
                        <asp:DropDownList ID="affiliationDDList" runat="server" >
                           <asp:ListItem Value="default">--Please Select--</asp:ListItem>
                           <asp:ListItem Value="student">Student</asp:ListItem>
                           <asp:ListItem Value ="alumni">Alumni</asp:ListItem>
                           <asp:ListItem Value="faculty">Faculty Member</asp:ListItem>
                           <asp:ListItem Value="employee">Employee</asp:ListItem>
                        </asp:DropDownList>
                   </div>
            </div>    
   </div>
</div>
       
       </asp:Content>

