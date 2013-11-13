<%@ Page Title="" Language="C#" MasterPageFile="~/teht3.master" AutoEventWireup="true" CodeFile="g2456_teht7.aspx.cs" Inherits="g2456_teht7" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:GridView ID="autoNakyma" runat="server" 
        AllowSorting="True" 
        AllowPaging="True" 

        OnSorting="autoNakyma_Sorting" 
        OnPageIndexChanging="autoNakyma_PageIndexChanging" 
        OnRowCancelingEdit="autoNakyma_RowCancelingEdit" 
        OnRowDeleting="autoNakyma_RowDeleting" 
        OnRowEditing="autoNakyma_RowEditing" 
        OnRowUpdating="autoNakyma_RowUpdating" >
    </asp:GridView>

    <asp:Button ID="addNew" runat="server" OnClick="addNew_Click" Text="Lisää uusi" />
    <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="Tallenna" />

    <asp:Login ID="LoginWindow" runat="server" 
        OnAuthenticate="LoginWindow_Authenticate" 
        OnLoginError="LoginWindow_LoginError" 
        OnLoggedIn="LoginWindow_LoggedIn"
        RememberMeText="Remember me.">
    </asp:Login>
    <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click" />
    <asp:Label ID="lblInfo" runat="server"></asp:Label>
</asp:Content>

