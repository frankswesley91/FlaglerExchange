<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListingGrid.aspx.cs" Inherits="FlaglerExchange.Views.ListingGrid" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:ListView ID="ListView1" runat="server">
            <ItemTemplate>
        <div>
            <table>
                <tr><td><h3><%#Eval("ListingName") %></h3></td></tr>
                <tr><td><h3><%#Eval("Price") %></h3></td></tr>
            </table>
        </div>
    </ItemTemplate>
    </asp:ListView>

    
</asp:Content>
