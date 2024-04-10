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
         <p style="font-size:xx-large; font-family:'Times New Roman'; color: white; ">Welcome back,</p> <asp:Label class="StudentName" ID="Label1" runat="server" Text="Insert Student Name" Font-Names="Times New Roman" Font-Strikeout="False"></asp:Label>
              
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
        <asp:GridView ID="giveResults" runat="server"></asp:GridView>
        <!--Row #1-->
        <!-------------Product#1---------->
    
     <div class="row">
        <div class="column">
            <table style="margin: 0 auto;">
                <tr>
                    <td>
             <asp:Image class="Product" ID="ProductImage1" runat="server" ImageUrl="~/Images/Cat.jpeg" AlternateText="Cat" />

                    </td>
                </tr>
             
                 <tr>
                     <td>
            <!---ASP More Info Button and Price Label--->
             <asp:Button class="more-info" ID="ButtonToItemPage" runat="server" Height="39px" Text="More Info" OnClick="ButtonToItemPage_Click"/>
             <asp:Label class="priceLabel" ID="PriceLabel1" runat="server" Text="Insert Price" Font-Names="Times New Roman" Font-Strikeout="False" Font-Bold="true"></asp:Label>
                    </td>
                </tr>
             </table>
        </div>

         <!-------------Product#2---------->
         
        <div class="column">
            <table style="margin: 0 auto;">
                <tr>
                    <td>
             <asp:Image class="Product" ID="ProductImage2" runat="server" ImageUrl="~/Images/backpack.jpeg" AlternateText="Backpack" />
                    </td>
                </tr>
                <tr>
                    <td>
             <!---ASP More Info Button and Price Label--->
             <asp:Button class="more-info" ID="ButtonToItemPage2" runat="server" Height="39px" Text="More Info" OnClick="ButtonToItemPage_Click"/>
             <asp:Label class="priceLabel" ID="PriceLabel2" runat="server" Text="Insert Price" Font-Names="Times New Roman" Font-Strikeout="False" Font-Bold="true"></asp:Label>
                    </td>
                 </tr>
            </table>
        </div>

        <!-------------Product#3---------->
        <div class="column">
            <table style="margin: 0 auto;">
                <tr>
                    <td>
             <asp:Image class="Product" ID="ProductImage3" runat="server" ImageUrl="~/Images/bed.jpeg" AlternateText="Bed" />
                    </td>
                </tr>
                <tr>
                    <td>
                <!---ASP More Info Button and Price Label--->
             <asp:Button class="more-info" ID="ButtonToItemPage3" runat="server" Height="39px" Text="More Info" OnClick="ButtonToItemPage_Click"/>
             <asp:Label class="priceLabel" ID="PriceLabel3" runat="server" Text="Insert Price" Font-Names="Times New Roman" Font-Strikeout="False" Font-Bold="true"></asp:Label>
                    </td>
                </tr>
             </table>
       </div>
    </div>

        <!--Row #2-->
        <!-------------Product#4---------->
      <div class="row">
        <div class="column">
            <table style ="margin: 0 auto;">
                <tr>
                    <td>
                <asp:Image class="Product" ID="ProductImage4" runat="server" ImageUrl="~/Images/car.jpeg" AlternateText="Car" />
                   </td>
                </tr>
                <tr>
                    <td>
                <!---ASP More Info Button and Price Label--->
             <asp:Button class="more-info" ID="ButtonToItemPage4" runat="server" Height="39px" Text="More Info" OnClick="ButtonToItemPage_Click"/>
             <asp:Label class="priceLabel" ID="PriceLabel4" runat="server" Text="Insert Price" Font-Names="Times New Roman" Font-Strikeout="False" Font-Bold="true"></asp:Label>
                    </td>
                    </tr>
             </table>
        </div>
       

        <!-------------Product#5---------->
        <div class="column">
            <table style="margin: 0 auto;">
                <tr>
                    <td>
             <asp:Image class="Product" ID="ProductImage5" runat="server" ImageUrl="~/Images/Controller.jpeg" AlternateText="Controller" />
                    </td>
                </tr>

                <tr>
                   <td>
                <!---ASP More Info Button and Price Label--->
             <asp:Button class="more-info" ID="ButtonToItemPage5" runat="server" Height="39px" Text="More Info" OnClick="ButtonToItemPage_Click"/>
             <asp:Label class="priceLabel" ID="PriceLabel5" runat="server" Text="Insert Price" Font-Names="Times New Roman" Font-Strikeout="False" Font-Bold="true"></asp:Label>
                   </td>
                </tr>
             </table>
        </div>


        <!-------------Product#6---------->
        <div class="column">
            <table style="margin: 0 auto;">
                <tr>
                    <td>
             <asp:Image class="Product" ID="ProductImage6" runat="server" ImageUrl="~/Images/labtop.jpeg" AlternateText="labtop" />
                    </td>
                </tr>
                     <tr>
                        <td>
                <!---ASP More Info Button and Price Label--->
             <asp:Button class="more-info" ID="ButtonToItemPage6" runat="server" Height="39px" Text="More Info" OnClick="ButtonToItemPage_Click"/>
             <asp:Label class="priceLabel" ID="PriceLabel6" runat="server" Text="Insert Price" Font-Names="Times New Roman" Font-Strikeout="False" Font-Bold="true"></asp:Label>
                        </td>
                    </tr>
                </table>
        </div>
     </div>

        <!---Row #3--->
        <!-------------Product#7---------->
      <div class="row">
        <div class="column">
            <table style="margin: 0 auto;">
                <tr>
                    <td>
             <asp:Image class="Product" ID="ProductImage7" runat="server" ImageUrl="~/Images/stuffedcat.jpeg" AlternateText="StuffedCat" />
                    </td>
                </tr>
                <tr>
                    <td>
                <!---ASP More Info Button and Price Label--->
             <asp:Button class="more-info" ID="ButtonToItemPage7" runat="server" Height="39px" Text="More Info" OnClick="ButtonToItemPage_Click"/>
             <asp:Label class="priceLabel" ID="PriceLabel7" runat="server" Text="Insert Price" Font-Names="Times New Roman" Font-Strikeout="False" Font-Bold="true"></asp:Label>
                    </td>
               </tr>
            </table>
        </div>

        <!-------------Product#8---------->
        <div class="column">
            <table style="margin: 0 auto;">
                <tr>
                    <td>
             <asp:Image class="Product" ID="ProductImage8" runat="server" ImageUrl="~/Images/Teashirt.jpeg" AlternateText="Teashirt" />
                    </td>
                </tr>
                <tr>
                    <td>
                <!---ASP More Info Button and Price Label--->
             <asp:Button class="more-info" ID="ButtonToItemPage8" runat="server" Height="39px" Text="More Info" OnClick="ButtonToItemPage_Click"/>
             <asp:Label class="priceLabel" ID="PriceLabel8" runat="server" Text="Insert Price" Font-Names="Times New Roman" Font-Strikeout="False" Font-Bold="true"></asp:Label>
                   </td>
               </tr>
            </table>
        </div>



        <!-------------Product#9---------->
        <div class="column">
            <table style ="margin: 0 auto;">
                <tr>
                    <td>
             <asp:Image class="Product" ID="ProductImage9" runat="server" ImageUrl="~/Images/textbook.jpeg" AlternateText="Textbook" />
                    </td>
                </tr>
                <tr>
                    <td>
                <!---ASP More Info Button and Price Label--->
             <asp:Button class="more-info" ID="ButtonToItemPage9" runat="server" Height="39px" Text="More Info" OnClick="ButtonToItemPage_Click"/>
             <asp:Label class="priceLabel" ID="PriceLabel9" runat="server" Text="Insert Price" Font-Names="Times New Roman" Font-Strikeout="False" Font-Bold="true"></asp:Label>
                   </td>
                </tr>
            </table>
        </div>
      </div>

    

    </body>


</asp:Content>
