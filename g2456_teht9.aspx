<%@ Page Title="" Language="C#" MasterPageFile="~/teht3.master" AutoEventWireup="true" CodeFile="g2456_teht9.aspx.cs" Inherits="g2456_teht9" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:LoginView ID="LoginView1" runat="server">
        <LoggedInTemplate>
            <asp:Button id="btnEditmode" runat="server" Text="Edit mode" OnClick="btnEditmode_Click"/>

            <asp:LoginName ID="LoginName1" runat="server" />
            <asp:LoginStatus ID="LoginStatus1" runat="server" />
        </LoggedInTemplate>
        <AnonymousTemplate>
            <asp:LoginStatus ID="LoginStatus2" runat="server" />
        </AnonymousTemplate>
    </asp:LoginView>

    <div id="editmodecontrols" runat="server" visible="false">
        <asp:TextBox ID="txtQuetion" runat="server"></asp:TextBox>
        <asp:DropDownList ID="cmbNumberofAnswers" runat="server" AutoPostBack="true">
            <asp:ListItem Value="2">2</asp:ListItem>
            <asp:ListItem Value="3">3</asp:ListItem>
            <asp:ListItem Value="4">4</asp:ListItem>
            <asp:ListItem Value="5">5</asp:ListItem>
            <asp:ListItem Value="6">6</asp:ListItem>
            <asp:ListItem Value="7">7</asp:ListItem>
            <asp:ListItem Value="8">8</asp:ListItem>
            <asp:ListItem Value="9">9</asp:ListItem>
            <asp:ListItem Value="10">10</asp:ListItem>
        </asp:DropDownList>
        <asp:Panel ID="pane" runat="server"></asp:Panel>
        <asp:Button id="btnAddQuestion" runat="server" Text="Add Question" OnClick="btnAddQuestion_Click"></asp:Button>
    </div>

</asp:Content>

