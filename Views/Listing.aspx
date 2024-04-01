<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Listing.aspx.cs" Inherits="FlaglerExchange.Views.Listing" %>
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
        <asp:ListView ID="ListView_Products" runat="server" 
              DataKeyNames="ProductID"  
              DataSourceID="SqlDataSource2" 
              GroupItemCount="2" OnSelectedIndexChanged="ListView_Products_SelectedIndexChanged">
   <EmptyDataTemplate>
      <table runat="server">
        <tr>
          <td>No data was returned.</td>
        </tr>
     </table>
  </EmptyDataTemplate>
  <EmptyItemTemplate>
     <td runat="server" />
  </EmptyItemTemplate>
  <GroupTemplate>
    <tr ID="itemPlaceholderContainer" runat="server">
      <td ID="itemPlaceholder" runat="server"></td>
    </tr>
  </GroupTemplate>
  <ItemTemplate>
    <td runat="server">
      <table border="0" width="300">
        <tr>
          <td>&nbsp</td>
          <td>
            <a href='ProductDetails.aspx?productID=<%# Eval("ProductID") %>'>
               <image src='Catalog/Images/Thumbs/<%# Eval("ProductImage") %>' 
                      width="100" height="75" border="0">
            </a> &nbsp
          </td>
          <td>
            <a href='ProductDetails.aspx?productID=<%# Eval("ProductID") %>'><span 
               class="ProductListHead"><%# Eval("ModelName") %></span><br>
            </a>
            <span class="ProductListItem">
              <b>Price: </b><%# Eval("UnitCost", "{0:c}")%>
            </span><br />
            <a href='AddToCart.aspx?productID=<%# Eval("ProductID") %>'>
            </a>
          </td>
        </tr>
      </table>
    </td>
  </ItemTemplate>
  <LayoutTemplate>
    <table runat="server">
      <tr runat="server">
        <td runat="server">
          <table ID="groupPlaceholderContainer" runat="server">
            <tr ID="groupPlaceholder" runat="server"></tr>
          </table>
        </td>
      </tr>
      <tr runat="server"><td runat="server"></td></tr>
    </table>
  </LayoutTemplate>
</asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    </body>
</asp:Content>

