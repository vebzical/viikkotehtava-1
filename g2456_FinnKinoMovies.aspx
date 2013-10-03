<%@ Page Title="" Language="C#" MasterPageFile="~/teht3.master" AutoEventWireup="true" CodeFile="g2456_FinnKinoMovies.aspx.cs" Inherits="g2456_FinnKinoMovies" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Button ID="btnGetTheatres" runat="server" Text="Hae Teatterit" OnClick="btnGetTheatres_Click"/>
    <asp:ListBox ID="myListBox" runat="server" DataTextField="ID" Rows="18"
        OnSelectedIndexChanged="myListBox_SelectedIndexChanged" AutoPostBack="true"></asp:ListBox>
    <asp:XmlDataSource ID="myDataSource" runat="server"></asp:XmlDataSource>
    <asp:Repeater ID="myRepeater" runat="server" DataSourceID="myDataSource">
        <ItemTemplate>
            <asp:Image ID="image1" runat="server" ImageUrl='<%#XPath("Images/EventSmallImagePotrait") %>' />
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>

