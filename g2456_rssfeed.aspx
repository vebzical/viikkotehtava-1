<%@ Page Title="" Language="C#" MasterPageFile="~/teht3.master" AutoEventWireup="true" CodeFile="g2456_rssfeed.aspx.cs" Inherits="g2456_rssfeed" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:XmlDataSource ID="myDataSource" runat="server" XPath="rss/channel/item"></asp:XmlDataSource>

    <asp:Button ID="btnGetLiiga" Text="Liiga" runat="server" OnClick="btnGetLiiga_Click"/>
    <asp:Button ID="btnGetMicro" Text="Microsoft" runat="server" OnClick="btnGetMicro_Click"/>
    <asp:Button ID="btnGetIS" Text="IltaSanomat" runat="server" OnClick="btnGetIS_Click"/>
    <h1><asp:Label ID="lblHeader" runat="server" Text="..."></asp:Label></h1>
    <asp:Label ID="lblBody" runat="server" Text="..."/>
    <asp:Table ID="myDataTable" runat="server"></asp:Table>
</asp:Content>

