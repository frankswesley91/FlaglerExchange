<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreateListing.aspx.cs" Inherits="FlaglerExchange.Views.CreateListing" %>
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

html {
  font-size: 14px;
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
    <body>
<table class="w-100">
    <tr>
        <td style="width: 50px">&nbsp;</td>
        <td style="width: 1038px">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 50px; height: 30px"></td>
        <td style="width: 1038px; height: 30px">
            <asp:Label ID="Label4" runat="server" Font-Names="Times New Roman" Text="Item Title"></asp:Label>
        </td>
        <td style="height: 30px"></td>
        <td style="height: 30px"></td>
        <td style="height: 30px"></td>
    </tr>
    <tr>
        <td style="width: 50px; height: 30px"></td>
        <td style="width: 1038px; height: 30px">
            <asp:TextBox ID="TextBox1" runat="server" Width="258px"></asp:TextBox>
        </td>
        <td style="height: 30px"></td>
        <td style="height: 30px"></td>
        <td style="height: 30px"></td>
    </tr>
    <tr>
        <td style="width: 50px; height: 30px"></td>
        <td style="width: 1038px; height: 30px"></td>
        <td style="height: 30px"></td>
        <td style="height: 30px"></td>
        <td style="height: 30px"></td>
    </tr>
    <tr>
        <td style="width: 50px; height: 30px"></td>
        <td style="width: 1038px; height: 30px">
            <asp:Label ID="Label1" runat="server" Text="Add Images:" Font-Names="Times New Roman" Font-Strikeout="False"></asp:Label>
        </td>
        <td style="height: 30px"></td>
        <td style="height: 30px"></td>
        <td style="height: 30px"></td>
    </tr>
    <tr>
        <td style="width: 50px; height: 30px"></td>
        <td style="width: 1038px; height: 30px">
            <asp:FileUpload ID="FileUpload1" runat="server" class="more-info" AllowMultiple="True"/>
        </td>
        <td style="height: 30px"></td>
        <td style="height: 30px"></td>
        <td style="height: 30px"></td>
    </tr>
    <tr>
        <td style="width: 50px; height: 11px"></td>
        <td style="width: 1038px; height: 11px"></td>
        <td style="height: 11px"></td>
        <td style="height: 11px"></td>
        <td style="height: 11px"></td>
    </tr>
    <tr>
        <td style="width: 50px; height: 45px"></td>
        <td style="width: 1038px; height: 45px">
            <asp:Button ID="Button1" runat="server" Height="59px" Text="Add Another Image" Class="more-info"/>
        </td>
        <td style="height: 45px"></td>
        <td style="height: 45px"></td>
        <td style="height: 45px"></td>
    </tr>
    <tr>
        <td style="width: 50px; height: 30px"></td>
        <td style="width: 1038px; height: 30px"></td>
        <td style="height: 30px"></td>
        <td style="height: 30px"></td>
        <td style="height: 30px"></td>
    </tr>
    <tr>
        <td style="width: 50px; height: 30px"></td>
        <td style="width: 1038px; height: 30px">
            <asp:Label ID="Label2" runat="server" Text="Item Description:" Font-Names="Times New Roman"></asp:Label>
        </td>
        <td style="height: 30px"></td>
        <td style="height: 30px"></td>
        <td style="height: 30px"></td>
    </tr>
    <tr>
        <td style="width: 50px">&nbsp;</td>
        <td style="width: 1038px">
            <textarea id="TextArea1" name="S1" style="width: 413px; height: 105px"></textarea></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 50px; height: 30px"></td>
        <td style="width: 1038px; height: 30px"></td>
        <td style="height: 30px"></td>
        <td style="height: 30px"></td>
        <td style="height: 30px"></td>
    </tr>
    <tr>
        <td style="width: 50px; height: 30px"></td>
        <td style="width: 1038px; height: 30px">
            <asp:Label ID="Label3" runat="server" Text="Add Tags:" Font-Names="Times New Roman"></asp:Label>
        </td>
        <td style="height: 30px"></td>
        <td style="height: 30px"></td>
        <td style="height: 30px"></td>
    </tr>
    <tr>
        <td style="width: 50px">&nbsp;</td>
        <td style="width: 1038px">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 50px">&nbsp;</td>
        <td style="width: 1038px">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
    </body>

</asp:Content>
