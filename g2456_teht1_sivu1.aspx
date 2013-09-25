<%@ Page Language="C#" AutoEventWireup="true" CodeFile="g2456_teht1_sivu1.aspx.cs" Inherits="g2456_teht1_sivu1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <p>Anna nimesi </p>
    <asp:TextBox ID="nimi" runat="server" />
    <table>
        <tr>
            <td><asp:Button Text="Välitä Parametrinä" ID="asParameter" runat="server" onClick="asParameter_Click"/></td>
            <td><asp:Button Text="Tallenna Sessioon" ID="asSession" runat="server" onClick="asSession_Click"/></td>
            <td><asp:Button Text="Tallenna cookie" ID="asCookie" runat="server" onClick="asCookie_Click"/></td>
        </tr></table>
    </div>
    </form>
</body>
</html>
