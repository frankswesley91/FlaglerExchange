<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Listing.aspx.cs" Inherits="FlaglerExchange.Views.Listing" %>
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

.create-listing-button {
    margin-top: 20px;
    padding: 10px;
    background-color: #fdb924;
    color: black;
    border:solid;
    border-radius: 10px;
    cursor: pointer;
    font-family: 'Times New Roman';
    
}
.create-listing-button:hover {
        background-color: #9e2339;
        color: white;
        
}

.priceLabel{
    font-family: 'Times New Roman'; 
    font-weight: bold;
    border: 1px solid #ccc;
    color: white;
    border-style:groove;
    border-color: #fdb924;
    margin-top: 10px;
   padding: 10px;
}

.row {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
}

.column {
  flex: 1 0 300px; /* Adjust the width as needed */
  margin: 10px;
  text-align: center;
}

img.Product {
  max-width: 200px;
  height: 200px;

}

.more-info {
   margin-top: 20px;
    padding: 10px;
    background-color: #fdb924;
    color: black;
    border:solid;
    border-radius: 10px;
    cursor: pointer;
    font-family: 'Times New Roman';
}

.more-info:hover{
    background-color: #9e2339;
    color: white;
    border-color: #fdb924;
}


/*Grid list view stuff*/

.table-grid {
    display: grid;
    grid-template-columns: repeat(3, 1fr);  /* Three items per row */
    grid-gap: 20px;
    padding: 20px;
}

.grid-item {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    background-color: white; /* Gold color */
    border: 5px solid #ffd700; /* Darker gold border */
    padding: 15px;
    text-align: center;
    border-radius: 10px; /* Rounded corners */
    box-shadow: 0 4px 6px rgba(0,0,0,0.1); /* Subtle shadow for depth */
    transition: transform 0.3s ease, box-shadow 0.3s ease; /* Smooth transition for hover effects */
}

.grid-item:hover {
    transform: translateY(-10px) scale(1.05); /* 3D hover effect */
    box-shadow: 0 15px 24px rgba(0,0,0,0.25); /* Enhanced shadow on hover */
}

.Product {
    width: 100%;
    height: auto;
    margin-bottom: 10px;
}

.DBdata {
    margin: 10px 0;
    font-family: 'Times New Roman';
    font-size: large;
}

.more-info {
    width: 80%;  /* adjust as needed */
    padding: 10px;
    margin-top: 10px;  /* spacing from the element above */
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
        <table style="margin: 0 auto">
            <tr>
                <td>
        <h1 style="font-family: 'Times New Roman'; color: white;">My Listings</h1>
                </td>
            </tr>
        </table>


         <table class="test" style="margin: 0 auto">
                <tr>
            <td>
                <asp:Button class="create-listing-button" ID="CreateListingButton" runat="server" Height="39px" Text="Create Listing" OnClick="ButtonToEditListingPage_Click" />
            </td>
                 </tr>
            </table>

        <!------------------------------------------------------------MY LISTINGS------------------------------------------------------------------->
        <!--Row #1-->
    <asp:ListView ID="ListView1" runat="server">
    <LayoutTemplate>
        <div class="table-grid">
            <asp:PlaceHolder ID="itemPlaceholder" runat="server"></asp:PlaceHolder>
        </div>
    </LayoutTemplate>
    <ItemTemplate>
        <div class="grid-item">
            <asp:Image class="Product" ID="ProductImage1" runat="server" ImageUrl="~/Images/Cat.jpeg" AlternateText="Cat" />
            <div class="DBdata"><%# Eval("ListingName") %></div>
            <div class="DBdata">$<%# Eval("Price") %></div>
            <asp:Button ID="ButtonToItemPage" runat="server" Text="More Info" OnClick="ButtonToItemPage_Click" class="more-info" />
        </div>
    </ItemTemplate>
</asp:ListView>

    </body>
</asp:Content>

