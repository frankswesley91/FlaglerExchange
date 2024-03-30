<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="FlaglerExchange.Views.Profile" %>
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
    <div>
        <p style="font-size:xx-large">
            ALEX
        </p>
    </div>

   <div id="profileMainContent" class ="container-fluid", style="background-color: white; align-content: normal; padding-left: 150px"> 
           <div class ="row" style="border: solid">
               <!--
           <div class="col-sm-2", style="padding-top: 10px">
               <h5 style="border-color: black; border: solid;">Name</h5>
               <div class="card">
                   <div class ="card-body", style="padding-top: 0px">
                       Here is some sample text
                   </div>
               </div>
           </div> -->
           <div class="col-lg-8", style="padding-top: 10px; border: solid">
               <h5 class="justify-content-center", style="border: solid">Contact Information</h5>
               <div class="card">
                   <div class="card-body"> 
                       <table class="container-fluid" id="contact-table"; style="border: solid;">
                           <tr>
                               <td><strong>Name: </strong></td>
                               <td>BAWK</td>
                           </tr>
                           <tr>
                               <td><strong>Email: </strong></td>
                               <td>lastname123@flagler.edu</td>
                           </tr>
                           <tr>
                               <td><strong>Phone: </strong></td>
                               <td>(123)-456-7890</td>
                           </tr>
                           <tr>
                               <td><strong>On/Off campus?: </strong></td>
                               <td>
                                   <asp:RadioButtonList ID="onCampusRBList" runat="server" RepeatDirection="Horizontal">
                                       <asp:ListItem>Yes</asp:ListItem>
                                       <asp:ListItem>No</asp:ListItem>
                                   </asp:RadioButtonList>

                               </td>
                           </tr>
                           <tr>
                               <td><strong>Address: </strong></td>
                               <td>74 King Street, St. Augustine FL 32080</td>
                           </tr>
                       </table>
                       <!--
                       <ul style="list-style: none">
                           <li style="padding-bottom: 15px"><strong>Email: </strong></li>
                           <li style="padding-bottom: 15px"><strong>Phone: </strong></li>
                           <!-- <p><em>On/Off campus?: this is where an asp:RadioButtonList element will go </em></p> 
                           <li><strong>Address: </strong></li>
                       </ul> -->
                   </div>
               </div>
           </div>
           <div id="profile-container "class ="container; col-sm-2", style=" border: solid; ">
               <div class="offset-md-2">
                   <img id="profile-image", style="justify-self: right; width: 150px; height:150px;" src="../Images/FlaglerExchangeLogo.png" />
               </div>
           </div>
           <div class ="row">
               <div class="col-lg-8", style ="border: solid; padding-top: 25px">
                   <h5 style="border: solid;">About me: </h5>
                   <label><em>This is where the</em> <strong>about me</strong> <em>section will go.</em></label>
               </div>
               <div class ="col-sm-2">
                       <h5 style="border: solid">Affiliation</h5>
                        <asp:DropDownList ID="affiliationDDList" runat="server" >
                           <asp:ListItem>--Please Select--</asp:ListItem>
                           <asp:ListItem>Student</asp:ListItem>
                           <asp:ListItem>Alumni</asp:ListItem>
                           <asp:ListItem>Faculty Member</asp:ListItem>
                           <asp:ListItem>Employee</asp:ListItem>
                        </asp:DropDownList>
                   </div>
            </div>
           <div class="row" style="padding-top: 10px; border: solid;">
               <div class="col-md-4 offset-md-8">
                  <h5 style="border: solid;"> Major(s)/Minor(s)</h5>
                       <table class="container-lg" style="border: dashed;">
                       <tr>
                           <td><strong>Major(s): </strong></td>
                           <td>
                               <table>
                                   <tr>
                                       <td>Coastal Environmental Science</td>
                                       <td style="padding-left: 20px;">CIS</td>
                                   </tr>
                               </table>
                           </td>
                       </tr>
                       <tr>
                           <td><strong>Minor(s): </strong></td>
                           <td>
                                <table>
                                   <tr>
                                       <td>Biology</td>
                                   </tr>
                               </table>
                           </td>
                       </tr>
                   </table>
               </div>

           </div>
   </div>
</asp:Content>

