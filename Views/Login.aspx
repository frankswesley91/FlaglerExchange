<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FlaglerExchange.Views.Login" %>
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
    color: black;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

nav li a.indexNava:hover{
    background-color: #9e2339;
    color: white;
}
/*Java Script cool animation stuff*/
.indexNav a {
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.indexNav a:hover, .indexNav a:focus {
    transform: translateY(-5px);
    box-shadow: 0 5px 15px rgba(0,0,0,0.3);
}


/*CSS FOR LOGIN/PASSWORD FEATURE*/
body {
    font-family: 'Times New Roman';
    justify-content: center;
    align-items: center;
  
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


label {
    margin-top: 10px;
    font-weight: bold;
}

input[type="text"],
input[type="password"] {
    padding: 10px;
    border: 1px solid #cccccc;
    border-radius: 3px;
    width: 700px;
}

button[type="submit"] {
    margin-top: 20px;
    padding: 10px;
    background-color: #fdb924;
    color: black;
    border:solid;
    border-radius: 10px;
    cursor: pointer;
    font-family: 'Times New Roman';
}

    button[type="submit"]:hover {
        background-color: #9e2339;
        color: white;
        
    }


   
    /*IMAGE CSS*/

aside {
  flex: 0 0 auto;
  margin-right: 20px;
  justify-content: center;
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

.alert-warning{
    font-size: large;
    align-content: center;
    margin: 0 auto;
    font-family: 'Times New Roman';
}
/*Light theme*/
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

.login-container {
    background-color: var(--form-background);
    color: var(--form-text);
    padding: 20px;
    border-radius: 8px;
    transition: background-color 0.3s, color 0.3s;
}


</style>

    <!--Index.cshtml will be where we construct the home page and nav bar. We will include a navigation menue for logining that will send the user to a place to login.-->
<div style="position: fixed; top: 10px; right: 10px; z-index: 1000;">
    <button class="more-info" id="theme-toggle" onclick="toggleTheme()">Switch to Dark Mode</button>
</div>


    <script>
        function toggleTheme() {
            const body = document.body;
            const currentTheme = body.getAttribute('data-theme');
            const newTheme = currentTheme === 'dark' ? 'light' : 'dark';

            body.setAttribute('data-theme', newTheme);
            localStorage.setItem('theme', newTheme);
            updateButtonText();
        }

        function updateButtonText() {
            const currentTheme = document.body.getAttribute('data-theme');
            const button = document.getElementById('theme-toggle');
            button.textContent = currentTheme === 'dark' ? 'Switch to Light Mode' : 'Switch to Dark Mode';
        }

        // Load theme from localStorage on initial load
        window.onload = function () {
            const savedTheme = localStorage.getItem('theme') || 'light';
            document.body.setAttribute('data-theme', savedTheme);
            updateButtonText();
        }
    </script>







<div class="text-center">
    <h1 class="title" style="color:white">Flagler Exchange</h1>
    <img src="/Images/Flagler.jpeg" alt="Flagler Logo"/>
    <p class="slogan"style="color:white">An easy platform to trade your items!</p>
</div>
    =

<!--Basic Nav bar allowing for the navigation to different parts of the site (THIS WILL BE CHANGED OBVIOUSLY)-->
<nav class="indexNav">
    <ul class="indexNavUL">
        <!--Image logo that sends the user to the home screen!-->
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

<!---------------------------------------Login and Password Portion--------------------------------------------->

    
     <body>   
    <div class="login-container">
        <div style="text-align: center;">
            <strong><p style="font-size: xx-large; margin: 0 auto;">Login</p></strong>
        </div>
        <br />
            
            <label for="username">Username:</label>
                
            <asp:TextBox class="input" ID="userEmail" runat="server" Width="258px"></asp:TextBox>
            <br />
            <br />
            <label for="password">Password:</label>
            <asp:TextBox class="input" ID="userPassword" runat="server" Width="258px" TextMode="Password"></asp:TextBox>
            
            <br />
            <br />

            <!--submit sends you to home screen-->
            <table class="Login-Create-Account-Buttons" style="margin: 0 auto;">
                <tr>
            <td><asp:Button class="more-info" ID="LoginButton" runat="server" Height="39px" Text="Login" OnClick="ButtonToHomePage_Click"/></td>
                    <!----Flagler Email Validator----->
                    <asp:RegularExpressionValidator 
                        ID="regexEmailValidator" 
                        runat="server" 
                        ErrorMessage="Email must be a Flagler College email (@flagler.edu)" 
                        ValidationExpression="^[\w\.-]+@flagler\.edu$" 
                        ControlToValidate="userEmail"
                        Display="Dynamic"
                        ForeColor="Red"
                        class="alert-warning">
                    </asp:RegularExpressionValidator>
            <!--create account sends you to the create account page screen-->
            <td><asp:Button class="more-info" ID="CreateAccountButton" runat="server" Height="39px" Text="Create Account" OnClick="ButtonToCreateAccountPage_Click"/></td>
                </tr>
            </table>
    </div>
            
    </body>

</asp:Content>
