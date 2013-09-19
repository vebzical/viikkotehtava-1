<%@ Page Title="Viikkotehtävä 1 - valuuttamuunnin" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="g2456_valuttamunnin.aspx.cs" Inherits="g2456_valuttamunnin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />Terve <asp:TextBox ID="nimi" runat="server"></asp:TextBox><br />
    Muunan bitcoinit eroiksi, anna bitcoinien määrä: <asp:TextBox ID="txtkolikot" runat="server"></asp:TextBox>
    <asp:Label ID="lblcurrency" runat="server" text="..."></asp:Label>
    <asp:Button ID="button1" runat="server" OnClick="Button1_Click" Text="Muunna" />
    <br />
    <asp:ListBox ID="lstyksi" runat="server"></asp:ListBox>
    <asp:ListBox ID="lstkaksi" runat="server" EnableViewState="False"></asp:ListBox>
</asp:Content>

