<%@ Page Title="" Language="C#" MasterPageFile="~/teht3.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Login ID="Login1" runat="server" Height="182px"  Width="272px"
        OnAuthenticate="Login1_Authenticate" 
        OnLoggedIn="Login1_LoggedIn" 
        OnLoginError="Login1_LoginError" 
        DestinationPageUrl="~/g2456_teht9.aspx">
    </asp:Login>
</asp:Content>

