<%@ Page Title="Vepsän .NET sivut saatana" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="g2456_indexMP.aspx.cs" Inherits="g2456_indexMP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>

        <h1>Viikon 37 tuntiharkat</h1>
        <h3>Database demo</h3>
        <asp:HyperLink runat="server" ID="Hyperlink2" NavigateUrl="~/g2456_DBdemo.aspx">Viikkotehtava1</asp:HyperLink>
        <h3>paikallinen databaase Demo 1</h3>
        <asp:HyperLink runat="server" ID="Hyperlink3" NavigateUrl="~/g2456_LocalDBdemo.aspx">Viikkotehtava1</asp:HyperLink>
        <h1>Viikon 38 tuntiharkat</h1>
        <asp:HyperLink runat="server" ID="Hyperlink4" NavigateUrl="~/g2456_age.aspx">Viikkotehtava1</asp:HyperLink>
        <h1>Tehtävät 1 & 2</h1>
    </div>
</asp:Content>

