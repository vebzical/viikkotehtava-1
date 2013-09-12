<%@ Page Language="C#" AutoEventWireup="true" CodeFile="g2456_LocalDBdemo.aspx.cs" Inherits="g2456_LocalDBdemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Esan paikalliset viiteot</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Tässä kotimaisia rainoja (oliokokoelma)</h1>
        <asp:Button id="btnGetMovies" runat="server" Text="Hae elokuvat (oliokokoelma)" OnClick="btnGetMovies_Click" />
        <asp:DataList ID="myDataList" runat="server">
            <ItemTemplate>Elokuvan<%#Eval("Title") %>Ohjannut<%#Eval("Director") %>Vuosi<%#Eval("Year") %></ItemTemplate>
        </asp:DataList>
    </div>
    </form>
</body>
</html>
