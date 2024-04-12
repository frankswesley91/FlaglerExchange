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

.indexNav a {
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.indexNav a:hover, .indexNav a:focus {
    transform: translateY(-5px);
    box-shadow: 0 5px 15px rgba(0,0,0,0.3);
}
/*--------------------------------Form stuff--------------------------------*/

.create-listing-container {
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

.Check-box-list-space input {
    margin-right: 10px;
}

.createListingLabel {
    font-size: xx-large;
}

.input{
    font-family: 'Times New Roman';
}


.alert-warning{
    font-size: large;
    align-content: center;
    margin: 0 auto;
    font-family: 'Times New Roman';
}
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

.create-listing-container {
    background-color: var(--form-background);
    color: var(--form-text);
    padding: 20px;
    border-radius: 8px;
    transition: background-color 0.3s, color 0.3s;
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
        <div class="create-listing-container" style="margin: 0 auto">
<table class="w-100">
      <div style="text-align: center;">
     <asp:Label CssClass="createListingLabel" ID="createEditListingLabel" runat="server" Font-Names="Times New Roman" Text="Create Listing" Font-Bold="true"></asp:Label>
      </div>
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
            <asp:Label ID="label2" runat="server" Font-Names="Times New Roman" Text="Item Title:" Font-Bold="true"></asp:Label>
        </td>
        <td style="height: 30px"></td>
        <td style="height: 30px"></td>
        <td style="height: 30px"></td>
    </tr>
    <tr>
        <td style="width: 50px; height: 30px"></td>
        <td style="width: 1038px; height: 30px">
            <asp:TextBox class="input" ID="listName" runat="server" Width="258px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 50px; height: 30px"></td>
        <td style="width: 1038px; height: 30px">
            <asp:Label ID="AddImageButton" runat="server" Text="Add Images:" Font-Names="Times New Roman" Font-Strikeout="False" Font-Bold="true"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 50px; height: 30px"></td>
        <td style="width: 1038px; height: 30px">
            <asp:FileUpload class="create-listing-button" ID="listingImage" runat="server" AllowMultiple="True"/>
        </td>
        <td style="height: 30px"></td>
        <td style="height: 30px"></td>
        <td style="height: 30px"></td>
    </tr>
    <tr>
        <td style="width: 50px; height: 30px"></td>
        <td style="width: 50px; height: 45px">
            <asp:Label ID="ItemDescriptionlabel" runat="server" Text="Item Description:" Font-Names="Times New Roman" Font-Bold="true"></asp:Label>
        </td>
        <td style="height: 30px"></td>
        <td style="height: 30px"></td>
        <td style="height: 30px"></td>
    </tr>
    <tr>
        <td style="width: 50px">&nbsp;</td>
        <td style="width: 1038px">
            <textarea class="input" id="listingDescription" runat="server" name="S1" style="width: 413px; height: 105px; font-family: 'Times New Roman'" ></textarea>

        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <table>
        <tr>
            <td>
                <asp:Label ID="ItemPriceLabel" runat="server" Text="Item Price:" Font-Names="Times New Roman" Font-Bold="true"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox class="input" ID="listingPrice" runat="server" Width="258px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator
                        ID="revPrice" 
                        runat="server" 
                        ControlToValidate="listingprice" 
                        ErrorMessage="Please enter a valid number (whole or decimal)" 
                        ValidationExpression="^\d+(\.\d{1,2})?$" 
                        ForeColor="Red"
                        Display="Dynamic"
                        class="alert-warning">
                    </asp:RegularExpressionValidator>
            </td>
        </tr>
        
    </table>
    <br />
    <table>
        <asp:Label ID="Label5" runat="server" Text="Add Tags:" Font-Names="Times New Roman" Font-Bold="true"></asp:Label>
        <tr>
            <td style="font-family: 'Times New Roman'">
                <asp:CheckBoxList CssClass="Check-box-list-space" ID="listingCategories" runat="server">
                <asp:ListItem ID="CategoryElectronics" Value="Electronics">Electronics</asp:ListItem>
                <asp:ListItem ID="CategoryPets" Value="Pets">Pets</asp:ListItem>
                <asp:ListItem ID="CategoryBooks" Value="Books">Books</asp:ListItem>
                <asp:ListItem ID="CategoryFurtniture" Value="Furniture">Furniture</asp:ListItem>
                <asp:ListItem ID="CategoryTools" Value="Tools">Tools</asp:ListItem>
                <asp:ListItem ID="CategoryGames" Value="Games">Games</asp:ListItem>
                <asp:ListItem ID="CategoryClothing" Value="Clothing">Clothing</asp:ListItem>
                <asp:ListItem ID="CategoryPhones" Value="Phones">Phones</asp:ListItem>
                <asp:ListItem ID="CategoryBags" Value="Bags">Bags</asp:ListItem>
                <asp:ListItem ID="CategoryJewelry" Value="Jewelry">Jewelry</asp:ListItem>
                <asp:ListItem ID="CategoryAccessories" Value="Accessories">Accessories</asp:ListItem>
                <asp:ListItem ID="CategoryPhotos" Value="Photos">Photos</asp:ListItem>
                <asp:ListItem ID="CategorySchool" Value="School">School</asp:ListItem>
                <asp:ListItem ID="CategoryPlants" Value="Plants">Plants</asp:ListItem>
                <asp:ListItem ID="CategoryShoes" Value="Shoes">Shoes</asp:ListItem>
                <asp:ListItem ID="CategoryFood" Value="Food">Food</asp:ListItem>
                <asp:ListItem ID="CategorySports" Value="Sports">Sports</asp:ListItem>
                <asp:ListItem ID="CategoryHome" Value="Home"> Home</asp:ListItem>
                <asp:ListItem ID="CategoryCleaning" Value="Cleaning">Cleaning</asp:ListItem>
            </asp:CheckBoxList>
            </td>
        </tr>
      </table>
    <br />
        <table>
             <tr>
                 <td>
                     <asp:Label ID="Label3" runat="server" Text="Item Availability:" Font-Names="Times New Roman" Font-Bold="true"></asp:Label>
                 </td>
             </tr>
            
            
            <tr>
                <td>
                    <asp:RadioButtonList ID="listingAvailabillity" runat="server">
                    <asp:ListItem Text="Yes" Value="Available" Selected="True"></asp:ListItem>
                    <asp:ListItem Text="No" Value="NotAvailable"></asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            
        </table>
    <table style="margin: 0 auto">
        <tr>
            <td style="margin: 0 auto">
                 <asp:Button class="create-listing-button" ID="SaveListing" runat="server" Height="39px" Text="Save" OnClick="ButtonToMyListingPage_Click"/>
     
            </td>
        </tr>
    </table>
    
</table>

            </div>
    </body>

</asp:Content>
