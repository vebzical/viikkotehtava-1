<%@ Page Title="" Language="C#" MasterPageFile="~/teht3.master" AutoEventWireup="true" CodeFile="g2456_teht6.aspx.cs" Inherits="g2456_teht6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="lblError" runat="server"></asp:Label>
    <asp:Button ID="btnKaikkiPelaajat" Text="Hae kaikki" runat="server" OnClick="btnKaikkiPelaajat_Click"/>
    <asp:Button ID="btnJarjesta" Text="Tehopisteet/Aakkoset" runat="server" OnClick="btnJarjesta_Click"/>
    <asp:ListBox ID="lstJoukkueet" runat="server"></asp:ListBox>
    <asp:ListBox ID="lstPaikat" runat="server"></asp:ListBox>
    <asp:ListBox ID="lstPpaikka" runat="server"></asp:ListBox>

    <div runat="server" id="er"></div> 
    <asp:GridView ID="GridView1" runat="server"></asp:GridView>
</asp:Content>

