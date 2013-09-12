<%@ Page Language="C#" AutoEventWireup="true" CodeFile="g2456_index.aspx.cs" Inherits="g2456_index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Titteli</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Viikkotehtava 1</h1>
        <asp:HyperLink runat="server" ID="Hyperlink1" NavigateUrl="~/Tehtava1.aspx">Viikkotehtava1</asp:HyperLink>
        <h1>Database demo</h1>
        <asp:HyperLink runat="server" ID="Hyperlink2" NavigateUrl="~/g2456_DBdemo.aspx">Viikkotehtava1</asp:HyperLink>
        <h1>paikallinen databaase Demo 1</h1>
        <asp:HyperLink runat="server" ID="Hyperlink3" NavigateUrl="~/g2456_LocalDBdemo.aspx">Viikkotehtava1</asp:HyperLink>
    </div>
    </form>
</body>
</html>
