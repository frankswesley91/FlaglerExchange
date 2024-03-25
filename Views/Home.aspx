﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="FlaglerExchange.Views.Home" %>
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
    color: #9e2339;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

nav li a.indexNava:hover{
    background-color: #9e2339;
    color: white;
}
/*Search Button CSS*/
button.Search{
     margin-top: 20px;
    padding: 10px;
    background-color: #fdb924;
    color: #ffffff;
    border:solid;
    border-radius: 10px;
    cursor: pointer;
}

 button.Search:hover {
        background-color: #9e2339;
        
    }




 /*Product CSS*/
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
  max-width: 100%;
  height: auto;

}

.more-info {
   margin-top: 20px;
    padding: 10px;
    background-color: #fdb924;
    color: #ffffff;
    border:solid;
    border-radius: 10px;
    cursor: pointer;
}

button.more-info:hover{
    background-color: #9e2339;
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
        <li class="indexNavList" style="border-style:double; border-color:#9e2339; border-width:thick"><a class="indexNava" href="/Views/Login.aspx">Login</a></li>
        <li class="indexNavList" style="border-style:double; border-color:#9e2339; border-width:thick"><a class="indexNava" href="/Views/Listing.aspx">List</a></li>
        <li class="indexNavList" style="border-style:double; border-color:#9e2339; border-width:thick"><a class="indexNava" href="/Views/Profile.aspx">Profile</a></li>
    </ul>
</nav>

<!---------------------------------------------- Main Body Content for this page--------------------------------------->
    <body>
        <p style="font-size:xx-large; font-family:'Times New Roman'">
            Welcome back, "StudentName"
        </p>
        <div>
            <input type="text" placeholder="Search..." name="search">
            <button class="Search"type="submit">Search</button>
        </div>
        <br />
        <br />
        <br />
        <br />
        <!----------------------------IMAGES OF THE PRODUCTS AND THEIR MORE INFO BUTTONS!--------------------------------->


        <!--Row #1-->
     <div class="row">
        <div class="column">
             <img class="Product" src="product1.jpg" alt="Product 1">
             <button class="more-info">More Info</button>
        </div>
        <div class="column">
             <img class="Product" src="product2.jpg" alt="Product 2">
             <button class="more-info">More Info</button>
        </div>
        <div class="column">
             <img class="Product" src="product3.jpg" alt="Product 3">
             <button class="more-info">More Info</button>
       </div>
   </div>







    </body>
</asp:Content>
