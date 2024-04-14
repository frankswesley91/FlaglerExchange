<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="FlaglerExchange.Views.Home" %>
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

/*-----------------Search Button CSS---------------------*/
button.Search{
      margin-top: 20px;
    padding: 10px;
    background-color: #fdb924;
    color: black;
    border:solid;
    border-radius: 10px;
    cursor: pointer;
    font-family: 'Times New Roman';
}

 button.Search:hover {
        background-color: #9e2339;
         color: white;
        
    }

 .search-bar {
     width: 100%;
    padding: 8px 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
 }


 /*-------------Product CSS-------------------------------*/
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



/*-------------------------Category css TENTATIVE-----------------------*/



.sidebar {
    font-family: 'Times New Roman';
    width: 250px;
    background-color: #fdb924;
    padding: 20px;
    box-sizing: border-box;
    float: left;
}

.main-content {
    margin-left: 270px; /* Adjust this margin according to your sidebar width */
    padding: 20px;
}

h2 {
    margin-top: 0;
}

.checkbox {
    margin-bottom: 10px;
}

.checkbox input[type="checkbox"] {
    margin-right: 10px;
}

.ApplyFilter {
   margin-top: 20px;
    padding: 10px;
    background-color: #9e2339;
    color: #ffffff;
    border:solid;
    border-radius: 10px;
    border-color: black;
    cursor: pointer;
    font-family: 'Times New Roman';
}

.ApplyFilter:hover {
     background-color: #fdb924;
     color: black;
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

.StudentName {
    font-size:xx-large; 
    font-family:'Times New Roman'; 
    color: white;
}


/* HOME SCREEN GRID STUFFFFFFF*/
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
    background-color: #9e2339; /* Gold color */
    border: 5px solid #ffd700; /* Darker gold border */
    padding: 15px;
    text-align: center;
    border-radius: 10px; /* Rounded corners */
    box-shadow: 0 4px 6px rgba(0,0,0,0.1); /* Subtle shadow for depth */
    transition: transform 0.3s ease, box-shadow 0.3s ease; /* Smooth transition for hover effects */
    color: white;
}

.grid-item:hover {
    transform: translateY(-10px) scale(1.05); /* 3D hover effect */
    box-shadow: 0 15px 24px rgba(0,0,0,0.25); /* Enhanced shadow on hover */
    background-color: #fdb924; /* Gold color */
    border: 5px solid black;
    color: black;
    
}

.Product {
    width: 100%;
    height: auto;
    margin-bottom: 10px;
}

.DBdata {
    margin: 10px 0;
    font-family: 'Times New Roman';
    font-size: larger;
}

.DBdata:hover{
    color: black;
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
         <p style="font-size:xx-large; font-family:'Times New Roman'; color: white; ">Welcome back,</p> <asp:Label class="StudentName" ID="userName" runat="server" Text="Enter Student Name" Font-Names="Times New Roman" Font-Strikeout="False"></asp:Label>
              
        <div class="search-elements">
            <table style="width: 1000px">
                <tr>
                    <td>
            <asp:TextBox class="search-bar" ID="SearchTextBox" runat="server"></asp:TextBox>
            <asp:Button class="more-info" ID="SearchButton" runat="server" Height="39px" Text="Search" OnClick="btnSearch_Click"/>
                     </td>
                    </tr>
             </table>
        </div>
        <br />
        <br />
        <br />
        <br />


        <!------------------------------Category Filtration-------------------------------------------------------------->
     

    <div class="sidebar">
        <h2 style="text-decoration: underline;">Filter Listings</h2>
        <form id="filterForm">
            <!----Filter#1------>
       <table>
        <asp:Label ID="Label5" runat="server" Text="Add Tags:" Font-Names="Times New Roman" Font-Bold="true"></asp:Label>
        <tr>
            <td style="font-family: 'Times New Roman'">
                <asp:CheckBoxList ID="CategoryCheckBoxList" runat="server">
                <asp:ListItem ID="Category1" Value="Electronics">Electronics</asp:ListItem>
                <asp:ListItem ID="Category2" Value="Pets">Pets</asp:ListItem>
                <asp:ListItem ID="Category3" Value="Books">Books</asp:ListItem>
                <asp:ListItem ID="Category4" Value="Furniture">Furniture</asp:ListItem>
                <asp:ListItem ID="Category5" Value="Tools">Tools</asp:ListItem>
                <asp:ListItem ID="Category6" Value="Games">Games</asp:ListItem>
                <asp:ListItem ID="Category7" Value="Clothing">Clothing</asp:ListItem>
                <asp:ListItem ID="Category8" Value="Phones">Phones</asp:ListItem>
                <asp:ListItem ID="Category9" Value="Bags">Bags</asp:ListItem>
                <asp:ListItem ID="Category10" Value="Jewelry">Jewelry</asp:ListItem>
                <asp:ListItem ID="Category11" Value="Accessories">Accessories</asp:ListItem>
                <asp:ListItem ID="Category12" Value="Photos">Photos</asp:ListItem>
                <asp:ListItem ID="Category13" Value="School">School</asp:ListItem>
                <asp:ListItem ID="Category14" Value="Plants">Plants</asp:ListItem>
                <asp:ListItem ID="Category15" Value="Shoes">Shoes</asp:ListItem>
                <asp:ListItem ID="Category16" Value="Food">Food</asp:ListItem>
                <asp:ListItem ID="Category17" Value="Sports">Sports</asp:ListItem>
                <asp:ListItem ID="Category18" Value="Home">Home</asp:ListItem>
                <asp:ListItem ID="Category19" Value="Cleaning">Cleaning</asp:ListItem>
            </asp:CheckBoxList>
            </td>
        </tr>

        <tr>
            <td style="margin: 0 auto">
                 <asp:Button class="ApplyFilter" ID="createListing" runat="server" Height="39px" Text="Apply Filters"/>
            </td>
        </tr>
    </table>
        </form>
    </div>
    <div class="main-content">
        <!-- Your main content goes here -->
    </div>



 <!----------------------------IMAGES OF THE PRODUCTS AND THEIR MORE INFO BUTTONS!--------------------------------->

        <!----THIS WILL NEED TO BE ON ANOTHER FILE I THINK, HOW DO WE GET THE PAGE TO REFRESH.----->
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
