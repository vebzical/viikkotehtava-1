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
    <asp:Label ID="lblInfo" runat="server"></asp:Label>
    <div id="editmodecontrols" runat="server" visible="false">
        <br/>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:Timer ID="Timer1" runat="server" OnTick="endSurvey" Enabled="false"></asp:Timer>
        <br/>
        <asp:DropDownList ID="DropDownTime" runat="server">
            <asp:ListItem Value="10">10s</asp:ListItem>
            <asp:ListItem Value="30">30s</asp:ListItem>
            <asp:ListItem Value="60">60s</asp:ListItem>
            <asp:ListItem Value="120">2m</asp:ListItem>
            <asp:ListItem Value="300">5m</asp:ListItem>
            <asp:ListItem Value="900">10m</asp:ListItem>
            <asp:ListItem Value="1200">15m</asp:ListItem>
        </asp:DropDownList>
        <asp:Button text="Aloita kysely" ID="btnStartGallup" runat="server" OnClick="btnStartGallup_Click"/>
        <br/>
        <asp:TextBox ID="txtQuetion" runat="server"></asp:TextBox>
        <asp:CheckBox ID="CheckBox1" runat="server" Text="Totta"/>
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
        <asp:Panel ID="pane" runat="server">
        </asp:Panel>
        <asp:Button id="btnAddQuestion" runat="server" Text="Add Question" OnClick="btnAddQuestion_Click"></asp:Button>
    </div>

    <div id="answerview" runat="server">
        <asp:Panel ID="studentPane" runat="server">
        </asp:Panel>
        <asp:Button ID="btnVastaa" text="Vastaa" runat="server" OnClick="btnVastaa_Click" Visible="false"/>
    </div>
  
</asp:Content>

