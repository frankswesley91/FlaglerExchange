<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreateAccount.aspx.cs" Inherits="FlaglerExchange.Views.CreateAccount" %>
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



   
    /*IMAGE CSS*/

aside {
  flex: 0 0 auto;
  margin-right: 20px;
  justify-content: center;
}




/*Create account form CSS*/



.create-account-container {
    background-color: #fff;
    padding: 50px;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    max-width: 400px;
    width: 100%;

    justify-content:center;
    align-items: center;

    background-color: white;
}

.form-group {
    margin-bottom: 20px;
}

label.create-account {
    display: block;
    font-weight: bold;
    margin-bottom: 5px;
}

input[type="text"],
input[type="email"] {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

.radio-group {
    display: flex;
    flex-direction: column;
}

button[type="submit"] {
    margin-top: 20px;
    padding: 10px;
    background-color: #fdb924;
    color: #ffffff;
    border:solid;
    border-radius: 10px;
    cursor: pointer;
    font-family: 'Times New Roman';
}
button.create-account-button[type="submit"]:hover {
        background-color: #9e2339;
        color: white;
        
}


.more-info {
   margin: 0 auto;
    padding: 10px;
    background-color: #fdb924;
    color: black;
    border:solid;
    border-radius: 10px;
    cursor: pointer;
    font-family: 'Times New Roman';
}

.createAccountLabel {
    font-size: xx-large;
}

</style>

    <!--Index.cshtml will be where we construct the home page and nav bar. We will include a navigation menue for logining that will send the user to a place to login.-->
<div class="text-center">
    <h1 class="title" style="color:white">Flagler Exchange</h1>
    <img src="/Images/Flagler.jpeg" alt="Flagler Logo"/>
    <p class="slogan"style="color:white">An easy platform to trade your items!</p>
</div>

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

    <!------------------------------------------------------Create account form--------------------------------------------->
<body>
    <div class="create-account-container" style="margin: 0 auto">

          <div style="text-align: center;">
            <strong><p style="font-size: xx-large; margin: 0 auto;">Create Account</p></strong>
            </div>
        <br />
            <div class="form-group">
                <label class="create-account" for="name">Name</label>
                <asp:TextBox ID="CreateUserName" runat="server" Width="258px"></asp:TextBox>
            </div>
            <div class="form-group">
                <label class="create-account" for="email">School Email</label>
                <asp:TextBox ID="CreateUserEmail" runat="server" Width="258px"></asp:TextBox>
            </div>
            <div class="form-group">
                <label style="font-weight: bold;">Affililiation</label>
                <div class="radio-group">

       <!------------------------------------------------Flagler Affiliation table-------------------------------------------------------------------->
            <table class="flagler-affiliation-buttons">
                <tr>
                    <td>
                <asp:RadioButtonList ID="rblAffiliation" runat="server">
                <asp:ListItem Text="Student" Value="AffiliationStudent" Selected="True"></asp:ListItem>
                <asp:ListItem Text="Faculty" Value="AffiliationFaculty"></asp:ListItem>
                <asp:ListItem Text="Staff" Value="AffiliationStaff"></asp:ListItem>
                <asp:ListItem Text="Alumni" Value="AffiliationAlumni"></asp:ListItem>
                  </asp:RadioButtonList>
                     </td>
                </tr>
            </table>
                </div>
            </div>
            
                <asp:Button class="more-info" ID="SubmitCreateAccountButton" runat="server" Height="39px" Text="Create Account" OnClick="ButtonToHomePage_Click"/>
            
    </div>
</body>

    


</asp:Content>
