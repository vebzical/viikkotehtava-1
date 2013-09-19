<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="g2456_age.aspx.cs" Inherits="g2456_age" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br/><asp:Label ID="texti" runat="server" Text="Label"></asp:Label><br/>
    <asp:Label ID="texti2" runat="server" Text="Label"></asp:Label><br />
    <asp:Label ID="texti3" runat="server" Text="Label"></asp:Label>
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="button1Painettu" Text="&lt;&lt;&lt; Vuosi" />
    <asp:Button ID="Button2" runat="server" OnClick="button2Painettu" Text="Vuosi &gt;&gt;&gt;" />
    <br />
    <asp:Calendar ID="Calendar1" runat="server" Width="244px" OnInit="tanaanOn" OnSelectionChanged="paivaaVaihdettu">
        <OtherMonthDayStyle BackColor="#999999" />
        <TodayDayStyle BackColor="#0099FF" />
        <WeekendDayStyle BackColor="#33CC33" BorderColor="#009933" BorderStyle="Solid" BorderWidth="1px" ForeColor="#003300" />
    </asp:Calendar>
</asp:Content>

