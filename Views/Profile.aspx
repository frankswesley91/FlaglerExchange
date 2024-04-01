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

#aboutMeTB {
    width: 100%; 
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

   <div id="profileMainContent" class ="container-fluid", style="background-color: white; align-content: normal; padding-left: 150px; "> 
       <div class ="row" >
           <div class="col-lg-9", style="padding-top: 10px;">
               <h5 class="justify-content-center", style="border: solid">Contact Information</h5>
               <div class="card">
                   <div class="card-body"> 
                       <table class="container-fluid" id="contact-table"; style="border: solid;">
                           <tr>
                               <td><strong>Name: </strong></td>
                               <td style="offset-position: center">BAWK</td>
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
                               <td><strong>Off campus?: </strong></td>
                               <td>
                                   <asp:RadioButtonList ID="onCampusRBList" runat="server" RepeatDirection="Horizontal">
                                       <asp:ListItem Value="1">Yes</asp:ListItem>
                                       <asp:ListItem Value="0" Selected="True">No</asp:ListItem>
                                   </asp:RadioButtonList>

                               </td>
                           </tr>
                           <tr>
                               <td><strong>Address: </strong></td>
                               <td>74 King Street, St. Augustine FL 32080</td>
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
                   <asp:Button ID="changeProfileImageButton" runat="server" Text="Change picture..." />
                   <asp:Button ID="editProfileButton" runat="server" Text="Edit Profile" OnClick="editProfileButton_Click" />
               </div>
           </div>
           <div class ="row">
               <div class="col-lg-5", style ="padding-top: 10px;">
                   <h5 style="border: solid;">About me: </h5>
                   <asp:TextBox ID="aboutMeTB" runat="server" TextMode="MultiLine" Width="1000px" Font-Size="Small">This is where the &quot;about me&quot; section will go, where users can type a quick bio about themselves that is visible to others. </asp:TextBox>
               </div>
               <div class="col-md-4" style="padding-top: 10px">
                  <h5 style="border: solid;"> Major(s)/Minor(s)</h5>
                       <table class="col-sm-2">
                       <tr>
                           <td><strong>Major(s): </strong></td>
                           <td style="border:groove">
                               <table>
                                   <tr>
                                       <td>
                                           <asp:TextBox ID="majorTB1" runat="server" Enabled="false" Text="CES" BorderStyle="None" Width="100px"></asp:TextBox>
                                       </td>
                                       <td><asp:TextBox ID="majorTB2" runat="server" Enabled="false" Text="CIS" BorderStyle="None" Width="175px"></asp:TextBox></td>
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
                                           <asp:TextBox ID="minorTB1" runat="server" Enabled="false" Text="Biology" BorderStyle="None" Width="175px"></asp:TextBox>

                                       </td>
                                       <td>
                                           <asp:TextBox ID="minorTB2" runat="server" Enabled="false" BorderStyle="None" Width="100px"></asp:TextBox>
                                       </td>
                                   </tr>
                               </table>
                           </td>
                       </tr>
                   </table>
               </div>
               <div class ="col-sm-2 offset-md-0" style="padding-top: 10px; margin-left: 25px">
                       <h5 style="border: solid">Affiliation</h5>
                        <asp:DropDownList ID="affiliationDDList" runat="server" >
                           <asp:ListItem Value="default">--Please Select--</asp:ListItem>
                           <asp:ListItem Value="student">Student</asp:ListItem>
                           <asp:ListItem Value ="alumni">Alumni</asp:ListItem>
                           <asp:ListItem Value="faculty">Faculty Member</asp:ListItem>
                           <asp:ListItem Value="employee">Employee</asp:ListItem>
                        </asp:DropDownList>
                   </div>
               <div class="btn, btn-link offset-md-5" style="padding-top: 30px; margin-bottom: 25px; ">
                   <asp:Button ID="saveProfileButton" runat="server" BackColor="DarkRed" ForeColor="White" Text="Save Changes..." Visible="false" OnClick="saveProfileButton_Click" />
               </div>
            </div>    
   </div>
</div>
       
       </asp:Content>

