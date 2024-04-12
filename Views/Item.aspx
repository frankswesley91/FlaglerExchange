<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Item.aspx.cs" Inherits="FlaglerExchange.Views.Item" %>
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
    color: white;

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

 nav li a.indexNava:hover {
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

/* CSS For Bryan's page specifically*/
div#item-container{
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
  margin: 0;
  
}

.container {
  text-align: center;
}

.text-box {
  padding: 10px;
  background-color: #ffffff;
  border: 1px solid #cccccc;
  border-radius: 5px;
  margin-bottom: 10px;
}

.image-container {
  position: relative;
  display: inline-block;
}

.image-container img {
  max-width: 100%;
  height: auto;
}

.prev-btn,
.next-btn {
  position: absolute;
  top: 50%;
  transform: translateY(-50%);
  font-size: 24px;
  padding: 10px;
  background-color: rgba(255, 255, 255, 0.7);
  border: none;
  cursor: pointer;
}

.prev-btn {
  left: 10px;
}

.next-btn {
  right: 10px;
}

.back-button {
   margin-top: 20px;
    padding: 10px;
    background-color: #fdb924;
    color: black;
    border:solid;
    border-radius: 10px;
    cursor: pointer;
    font-family: 'Times New Roman';
}

.back-button:hover{
    background-color: #9e2339;
    color: white;
}


Item-Name-Label{
    color: white;
}



.image-nav-buttons{
    margin-top: 20px;
    padding: 10px;
    background-color: #fdb924;
    color: black;
    border:solid;
    border-radius: 10px;
    cursor: pointer;
    font-family: 'Times New Roman';
}

.image-nav-buttons:hover{
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
    border-radius: 10px;
}

.contact-seller-button{
    margin-top: 20px;
    padding: 10px;
    background-color: #fdb924;
    color: black;
    border:solid;
    border-radius: 10px;
    cursor: pointer;
    font-family: 'Times New Roman';
}


.contact-seller-button:hover{
    background-color: #9e2339;
    color: white;
}

 .container {
            color: white;
}

.item-description-box{

    font-family: 'Times New Roman'; 
    border: 1px solid #ccc;
    color: white;
    border-style:groove;
    border-color: #fdb924;
    margin-top: 10px;
   padding: 10px;
    border-radius: 10px;
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
   

  
<!-- Because each of these pages is housed in an asp:Content element, that acts as the body. Don't need the <html> or <body> tags -->
<!-- Instead, we just use <div> elements to act as containers, and specify the type of container using the `class` attribute. --> 
    <!-- This contains the whole element -->
<div id="mainContent" class="Item-containter-main">
    <!-- Each class="row" container allows you to better separate elements of the form sequentially -->
    <div id="item-container" class="row">
        <div style="display: flex; align-content: flex-start">
            <asp:Button class="back-button" ID="returnToListButton" runat="server" Text="Back" Width="100px" Height="50px" OnClick="returnToListButton_Click" />
        </div>
                <!-- Each class="col-x" element organizes your element into a square cell  -->
            <div class="col-sm title" style="margin: 0.125px; padding-bottom: 0px">
                <!-- This needs to be "Item Name" rather than product name -->
                <asp:Label ID="itemName" runat="server" Text="Item Name"></asp:Label>
            </div>
        <div class="offset-6" style="padding-left: 105px">
            <!--- This row is to display Price and date posted -->
            <!--<div class ="container" style="margin: 0 auto;"> -->
                <div class="col-lg-6" style="border: solid; border-radius: 10px; border-color: #fdb924;  width: 450px;">
                    <table style="margin: 0 auto">
                        <tr>
                            <td><asp:Label ID="datePosted" runat="server" Text="Date Posted" style="font-family: 'Times New Roman'; font-weight: bold;"></asp:Label></td>
                            
                        </tr>
                    </table>
                </div>
            <!--</div>-->
        </div>
            <div class="row">
                
                <div class="col-lg">
                    <!-- This container thing allows the item image be contained better -->
                    <div class ="container">
                        <div class="body-content">
                            <asp:Button class="image-nav-buttons" ID="previousImage" runat="server" Text="<" Height="100px" OnClick="previousImage_Click" />
                            <asp:Image ID="productImage" runat="server" ImageUrl="~/Images/Cat.jpeg" Width="450px" Height="450px"/>
                            <asp:Button class="image-nav-buttons" ID="nextImage" runat="server" Text=">" Height="100px" OnClick="nextImage_Click" />
                              
                        </div>
            </div>
        </div>
            </div>
            <div class="row">
                <div class="col-sm">
                    <div class="text-body">
                         <asp:Label class="priceLabel" ID="price" runat="server" Text="Price" Font-Names="Times New Roman" Font-Strikeout="False" Font-Bold="true"></asp:Label>
                    </div>
                    <br />
                    <br />
                    <div class="text-body"> 
                        <asp:Label class="item-description-box" ID="itemDescriptionLabel" runat="server"  Width="55%" Height="50px" Text="Item Description"></asp:Label>
                    </div>
                </div>
       </div>
        <!--Button that redircets to seller's profile -->
        <div>
            <asp:Button class="contact-seller-button" ID="contactSeller" runat="server" Text="Contact Seller" OnClick="contactSeller_Click" />
        </div>
       </div>
    

 
</asp:Content>  
  
  
  
  
  
  
