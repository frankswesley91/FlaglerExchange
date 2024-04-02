<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Item.aspx.cs" Inherits="FlaglerExchange.Views.Item" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">\
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
   
    <!------ contains textbox for product name/date, textbox for product description, and buttons to move through images and start email --->
<html>
<body>
    <h1>Product Name</h1>

    <div>
        <button onclick="moveImage(-100)">&#8592;</button>
        <img id="product-image" src="product-image.jpg" alt="Product Image" width="300">
        <button onclick="moveImage(100)">&#8594;</button>
    </div>

    <p>Product Description: This is a description of the product. It provides details about the product's features, specifications, and benefits.</p>

    <script>
        function moveImage(offset) {
            var img = document.getElementById("product-image");
            var currentLeft = img.offsetLeft;
            img.style.left = (currentLeft + offset) + "px";
        }
    </script>
</body>
</html>

</asp:Content>

body {
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
  margin: 0;
  background-color: #f0f0f0;
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