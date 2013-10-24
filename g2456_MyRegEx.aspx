<%@ Page Title="" Language="C#" MasterPageFile="~/teht3.master" AutoEventWireup="true" CodeFile="g2456_MyRegEx.aspx.cs" Inherits="g2456_MyRegEx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:TextBox ID="txtEmail" runat="server" Text="seppo@merkki.esi"></asp:TextBox>
    <asp:RegularExpressionValidator ID="nameRegex" runat="server"
        ControlToValidate="txtEmail"
        ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$"
        ErrorMessage="Sähköposti on väärin!">
    </asp:RegularExpressionValidator>

    <asp:TextBox ID="txtName" runat="server" Text="Seppo Esimerkki"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
        ControlToValidate="txtName"
        ValidationExpression="^[a-öA-Ö.\s]{1,40}$"
        ErrorMessage="Nimi on väärin!">
    </asp:RegularExpressionValidator>
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click"/>

    <asp:ListBox ID="lstbox" runat="server"></asp:ListBox>
</asp:Content>

