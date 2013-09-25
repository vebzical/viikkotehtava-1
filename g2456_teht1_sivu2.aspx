<%@ Page Language="C#" AutoEventWireup="true" CodeFile="g2456_teht1_sivu2.aspx.cs" Inherits="g2456_teht1_sivu2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Tervetuloa</h1>
        <asp:TextBox ID="parametri" runat="server"  Enabled="false"/><br />
        <asp:TextBox ID="laskuri" runat="server" />
        <label id="tulos" runat="server"> Eurot markkoina</label></br>
        <asp:Button ID="muutaEuroiksi" runat="server" onClick="muutaEuroiksi_Click" Text="markat euroiksi"/>
        Laskutoimituksia: 
        <label id="tulokset" runat="server"></label>
    </div>
    </form>
</body>
</html>
