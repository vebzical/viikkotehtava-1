<%@ Page Language="C#" AutoEventWireup="true" CodeFile="g2456_index.aspx.cs" Inherits="g2456_index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Titteli</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h2>Viikkotehtava 1</h2>
        <asp:HyperLink runat="server" ID="Hyperlink1" NavigateUrl="~/Tehtava1.aspx">Viikkotehtava1</asp:HyperLink>
        <h2>Database demo</h2>
        <asp:HyperLink runat="server" ID="Hyperlink2" NavigateUrl="~/g2456_DBdemo.aspx">Viikkotehtava1</asp:HyperLink>
        <h2>paikallinen databaase Demo 1</h2>
        <asp:HyperLink runat="server" ID="Hyperlink3" NavigateUrl="~/g2456_LocalDBdemo.aspx">Viikkotehtava1</asp:HyperLink>
        <h1>Viikon 38 tuntiharkat</h1>
        <asp:HyperLink runat="server" ID="Hyperlink4" NavigateUrl="~/g2456_age.aspx">Viikkotehtava1</asp:HyperLink>
    </div>
    </form>
</body>
</html>
