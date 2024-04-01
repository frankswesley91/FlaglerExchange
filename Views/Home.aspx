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

button.more-info:hover{
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

button.ApplyFilter {
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

button:hover {
     background-color: #fdb924;
     color: black;
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
        <p style="font-size:xx-large; font-family:'Times New Roman'; color: white">
            Welcome back, "StudentName"
        </p>
        <div class="search-elements">
            <table style="width: 1000px">
                <tr>
                    <td>
            <input type="text" placeholder="Search for anything" name="search" class="search-bar" style="width: 1000px">
            <button class="Search"type="submit">Search</button>
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
        <h2 style="text-decoration: underline;">Filter Products</h2>
        <form id="filterForm">
            <!----Filter#1------>
            <div class="checkbox">
                <input type="checkbox" id="category1" name="category" value="category1">
                <label for="category1">Electronics</label>
            </div>
            <!----Filter#2------>
            <div class="checkbox">
                <input type="checkbox" id="category2" name="category" value="category2">
                <label for="category2">Pets</label>
            </div>
            <!----Filter#3------>
            <div class="checkbox">
                <input type="checkbox" id="category3" name="category" value="category3">
                <label for="category3">Books</label>
            </div>
            <!----Filter#4------>
             <div class="checkbox">
                <input type="checkbox" id="category4" name="category" value="category3">
                <label for="category3">Furniture</label>
            </div>
            <!----Filter#5------>
             <div class="checkbox">
                <input type="checkbox" id="category5" name="category" value="category3">
                <label for="category3">Tools</label>
            </div>
            <!----Filter#6------>
             <div class="checkbox">
                <input type="checkbox" id="category6" name="category" value="category3">
                <label for="category3">Games</label>
            </div>
            <!----Filter#7------>
             <div class="checkbox">
                <input type="checkbox" id="category7" name="category" value="category3">
                <label for="category3">Clothing</label>
            </div>
            <!----Filter#8------>
             <div class="checkbox">
                <input type="checkbox" id="category8" name="category" value="category3">
                <label for="category3">Vehicles</label>
            </div>
            <!----Filter#9------>
             <div class="checkbox">
                <input type="checkbox" id="category9" name="category" value="category3">
                <label for="category3">Tools</label>
            </div> 
            <!----Filter#10------>
             <div class="checkbox">
                <input type="checkbox" id="category10" name="category" value="category3">
                <label for="category3">Games</label>
            </div>
            <!----Filter#11------>
             <div class="checkbox">
                <input type="checkbox" id="category11" name="category" value="category3">
                <label for="category3">Clothing</label>
            </div>
            <!----Filter#12------>
             <div class="checkbox">
                <input type="checkbox" id="category12" name="category" value="category3">
                <label for="category3">Vehicles</label>
            </div>
            <!----Filter#13------>
             <div class="checkbox">
                <input type="checkbox" id="category13" name="category" value="category3">
                <label for="category3">Tools</label>
            </div>
            <!----Filter#14------>
             <div class="checkbox">
                <input type="checkbox" id="category14" name="category" value="category3">
                <label for="category3">Games</label>
            </div>
            <!----Filter#15------>
             <div class="checkbox">
                <input type="checkbox" id="category15" name="category" value="category3">
                <label for="category3">Clothing</label>
            </div>
            <!----Filter#16------>
             <div class="checkbox">
                <input type="checkbox" id="category16" name="category" value="category3">
                <label for="category3">Vehicles</label>
            </div>
             <!----Filter#17------>
             <div class="checkbox">
                <input type="checkbox" id="category17" name="category" value="category3">
                <label for="category3">Food</label>
            </div>
            <!----Filter#18------>
             <div class="checkbox">
                <input type="checkbox" id="category18" name="category" value="category3">
                <label for="category3">Sports</label>
            </div>
            <!----Filter#19------>
             <div class="checkbox">
                <input type="checkbox" id="category19" name="category" value="category3">
                <label for="category3">Home Improvement</label>
            </div>
            
            <!-- Add more checkboxes as needed -->
            <button class="ApplyFilter" type="submit">Apply Filter</button>
        </form>
    </div>
    <div class="main-content">
        <!-- Your main content goes here -->
    </div>



 <!----------------------------IMAGES OF THE PRODUCTS AND THEIR MORE INFO BUTTONS!--------------------------------->


        <!--Row #1-->
        <!-------------Product#1---------->
     <div class="row">
        <div class="column">
            <table style="margin: 0 auto;">
                <tr>
                    <td>
             <img class="Product" src="/Images/Cat.jpeg" alt="Product 1">
                    </td>
                </tr>
             
                 <tr>
                     <td>
             <button class="more-info"><a href="/Views/Item.aspx" style="text-decoration: none; color: black;">More Info</a></button>
             <label class="Product1-label" style="font-family: 'Times New Roman'; font-weight: bold; border: 1px solid #ccc;  color: white; border-style:groove; border-color: #fdb924; margin-top: 10px;
             padding: 10px;">$78.99</label>
                    </td>
                </tr>
             </table>
        </div>

         <!-------------Product#2---------->
         
        <div class="column">
            <table style="margin: 0 auto;">
                <tr>
                    <td>
             <img class="Product" src="/Images/backpack.jpeg" alt="Product 2">
                    </td>
                </tr>
                <tr>
                    <td>
             <button class="more-info"><a href="/Views/Item.aspx" style="text-decoration: none; color: black;">More Info</a></button>
             <label class="Product2-label" style="font-family: 'Times New Roman'; font-weight: bold; border: 1px solid #ccc;  color: white; border-style:groove; border-color: #fdb924; margin-top: 10px;
             padding: 10px;">$99.99</label>
                    </td>
                 </tr>
            </table>
        </div>

        <!-------------Product#3---------->
        <div class="column">
            <table style="margin: 0 auto;">
                <tr>
                    <td>
             <img class="Product" src="/Images/bed.jpeg" alt="Product 3">
                    </td>
                </tr>
                <tr>
                    <td>
              <button class="more-info"><a href="/Views/Item.aspx" style="text-decoration: none; color: black;">More Info</a></button>
             <label class="Product3-label" style="font-family: 'Times New Roman'; font-weight: bold; border: 1px solid #ccc;  color: white; border-style:groove; border-color: #fdb924; margin-top: 10px;
             padding: 10px;">$120.99</label>
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
                <img class="Product" src="/Images/car.jpeg" alt="Product 4">
                   </td>
                </tr>
                <tr>
                    <td>
              <button class="more-info"><a href="/Views/Item.aspx" style="text-decoration: none; color: black;">More Info</a></button>
             <label class="Product4-label" style="font-family: 'Times New Roman'; font-weight: bold; border: 1px solid #ccc;  color: white; border-style:groove; border-color: #fdb924; margin-top: 10px;
             padding: 10px;">$24.99</label>
                    </td>
                    </tr>
             </table>
        </div>
       

        <!-------------Product#5---------->
        <div class="column">
            <table style="margin: 0 auto;">
                <tr>
                    <td>
             <img class="Product" src="/Images/Controller.jpeg" alt="Product 5">
                    </td>
                </tr>

                <tr>
                   <td>
              <button class="more-info"><a href="/Views/Item.aspx" style="text-decoration: none; color: black;">More Info</a></button>
             <label class="Product5-label" style="font-family: 'Times New Roman'; font-weight: bold; border: 1px solid #ccc;  color: white; border-style:groove; border-color: #fdb924; margin-top: 10px;
             padding: 10px;">$10.99</label>
                   </td>
                </tr>
             </table>
        </div>


        <!-------------Product#6---------->
        <div class="column">
            <table style="margin: 0 auto;">
                <tr>
                    <td>
             <img class="Product" src="/Images/labtop.jpeg" alt="Product 6">
                    </td>
                </tr>
                     <tr>
                        <td>
              <button class="more-info"><a href="/Views/Item.aspx" style="text-decoration: none; color: black;">More Info</a></button>
             <label class="Product6-label" style="font-family: 'Times New Roman'; font-weight: bold; border: 1px solid #ccc;  color: white; border-style:groove; border-color: #fdb924; margin-top: 10px;
             padding: 10px;">$2.99</label>
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
             <img class="Product" src="/Images/stuffedcat.jpeg" alt="Product 7">
                    </td>
                </tr>
                <tr>
                    <td>
              <button class="more-info"><a href="/Views/Item.aspx" style="text-decoration: none; color: black;">More Info</a></button>
             <label class="Product7-label" style="font-family: 'Times New Roman'; font-weight: bold; border: 1px solid #ccc;  color: white; border-style:groove; border-color: #fdb924; margin-top: 10px;
             padding: 10px;">$6.99</label>
                    </td>
               </tr>
            </table>
        </div>

        <!-------------Product#8---------->
        <div class="column">
            <table style="margin: 0 auto;">
                <tr>
                    <td>
             <img class="Product" src="/Images/Teashirt.jpeg" alt="Product 8">
                    </td>
                </tr>
                <tr>
                    <td>
              <button class="more-info"><a href="/Views/Item.aspx" style="text-decoration: none; color: black;">More Info</a></button>
             <label class="Product8-label" style="font-family: 'Times New Roman'; font-weight: bold; border: 1px solid #ccc;  color: white; border-style:groove; border-color: #fdb924; margin-top: 10px;
             padding: 10px;">$44.44</label>
                   </td>
               </tr>
            </table>
        </div>



        <!-------------Product#9---------->
        <div class="column">
            <table style ="margin: 0 auto;">
                <tr>
                    <td>
             <img class="Product" src="/Images/textbook.jpeg" alt="Product 9">
                    </td>
                </tr>
                <tr>
                    <td>
              <button class="more-info"><a href="/Views/Item.aspx" style="text-decoration: none; color: black;">More Info</a></button>
             <label class="Product9-label" style="font-family: 'Times New Roman'; font-weight: bold; border: 1px solid #ccc;  color: white; border-style:groove; border-color: #fdb924; margin-top: 10px;
             padding: 10px;">$1.00</label>
                   </td>
                </tr>
            </table>
        </div>
      </div>



    </body>
</asp:Content>
