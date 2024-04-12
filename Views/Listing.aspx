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
}


/*Grid list view stuff*/

.grid-container {
    display: flex;
    gap: 10px; /* spacing between grid items */
}

.grid-item {
    padding: 10px; /* Padding within each grid item */
    border: 1px solid #fdb924; /* Border for visibility */
    background-color: var(--form-background);
    color: var(--form-text);
}


.DBdata {
    font-family: 'Times New Roman'; 
    font-weight: bold;
    border: 1px solid #ccc;
    color: white;
    border-style:groove;
    border-color: #fdb924;
    margin-top: 10px;
   padding: 10px;

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
               <table id="itemPlaceholder" runat="server" class="table-grid"></table>
            </LayoutTemplate>
            <ItemTemplate>
        <div class="row">
        <div class="column">
           <div class="grid-item">
            <table style="margin: 0 auto">
                <tr>
                    <td>
                <asp:Image class="Product" ID="ProductImage1" runat="server" ImageUrl="~/Images/Cat.jpeg" AlternateText="Cat" />

                    </td>
                </tr>
                    <tr><td></td></tr>
                <tr><td class="DBdata"><%#Eval("ListingName") %></td></tr>
                <tr><td class="DBdata">$<%#Eval("Price") %></td></tr>
                 <tr>
                     <td>
            <!---ASP More Info Button and Price Label--->
             <asp:Button class="more-info" ID="ButtonToItemPage" runat="server" Height="39px" Text="More Info" OnClick="ButtonToItemPage_Click"/>
                    </td>
                </tr>
                
             </table>
           </div>
        </div>
      </div>
    </ItemTemplate>
    </asp:ListView>     
    </body>
</asp:Content>

