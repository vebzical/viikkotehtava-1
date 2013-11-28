<%@ Page Title="" Language="C#" MasterPageFile="~/teht3.master" AutoEventWireup="true" CodeFile="g2456_teht9_stats.aspx.cs" Inherits="g2456_teht9_stats" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:LoginView ID="LoginView1" runat="server">
        <LoggedInTemplate>
            <asp:LoginName ID="LoginName1" runat="server" />
            <asp:LoginStatus ID="LoginStatus1" runat="server" />
        </LoggedInTemplate>
    </asp:LoginView>

    <div id="StatsDiv" runat="server" visible="false">
        <asp:Panel id="pane" runat="server">

        </asp:Panel>
        <asp:Button id="btnEmpty" Text="Empty list" runat="server" OnClick="btnEmpty_Click"/>
    </div>

</asp:Content>

