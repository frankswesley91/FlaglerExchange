﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FlaglerExchange.Views.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">



<style>

/*BASE HTML CSS!*/
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


/*CSS FOR LOGIN/PASSWORD FEATURE*/
body {
    font-family: 'Times New Roman';
    
}

.login-container {
    width: 500px;
    margin: 200px auto;
    background-color: #ffffff;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    border-style: groove;
}

h1 {
    text-align: center;
    color: #333333;
}

form {
    display: flex;
    flex-direction: column;
}

label {
    margin-top: 10px;
    font-weight: bold;
}

input[type="text"],
input[type="password"] {
    padding: 10px;
    border: 1px solid #cccccc;
    border-radius: 3px;
}

button[type="submit"] {
    margin-top: 20px;
    padding: 10px;
    background-color: #fdb924;
    color: #ffffff;
    border: none;
    border-radius: 3px;
    cursor: pointer;
}

    button[type="submit"]:hover {
        background-color: #9e2339;
    }

    /*IMAGE CSS*/
img.FlaglerImage1 {
    display: block;
    float:left;
    margin-left: auto;
    margin-right: auto;
}


img.FlaglerImage2 {
    display:block;
    margin-left: auto;
    max-width: auto;
}
</style>

    <!--Index.cshtml will be where we construct the home page and nav bar. We will include a navigation menue for logining that will send the user to a place to login.-->
<div class="text-center">
    <h1 class="title" style="color:white">Flagler Exchange</h1>
    <!--WHY IS NOTHING CONNECTING HAHAHAHAHHA! IM LOSING MY MIND!!!! :D-->
    <img src="Images/Flagler.jpeg" alt="Flagler Logo"/>
    <p class="slogan"style="color:white">An easy platform to trade your items!</p>
</div>

<!--Basic Nav bar allowing for the navigation to different parts of the site (THIS WILL BE CHANGED OBVIOUSLY)-->
<nav class="indexNav">
    <ul class="indexNavUL">
        <!--Why are the links not working again?-->
        <li class="indexNavList"><a class="indexNava" href="/Views/Home.aspx">Home</a></li>
        <li class="indexNavList"><a class="indexNava" href="Components/Login.razor">Login</a></li>
        <li class="indexNavList"><a class="indexNava" href="Components/Listing.razor">List</a></li>
        <li class="indexNavList"><a class="indexNava" href="Components/Profile.razor">Profile</a></li>
    </ul>
</nav>

<!---------------------------------------Login and Password Portion--------------------------------------------->

    <body>
    <div class="FlaglerImage1">
    <!--Flagler Picture #1-->
    <img src="Images/Flaglerlogo.jpeg" alt="FLAGLERIMAGE1" />
    <img src="Images/Flaglerlogo.jpeg" alt="FLAGLERIMAGE2" />
    </div>

    <div class="FlaglerImage2"
    <img src="Images/Flaglerlogo.jpeg" alt="FLAGLERIMAGE2" />
    </div>
    <div class="login-container">
        <h1>Login</h1>
        <form>
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" placeholder="Please enter your Flagler Email:" required>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" placeholder="Please enter your Flagler Password:" required>

            <button type="submit">Login</button>
        </form>
    </div>
</body>





</asp:Content>
