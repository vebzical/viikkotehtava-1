<%@ Page Language="C#" AutoEventWireup="true" CodeFile="g2456_teht2.aspx.cs" Inherits="g2456_teht2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/Elake.css" rel="stylesheet" type="text/css" />
    <title>Eläkesäästäminen alkaa nyt!</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Tänään on paras päivä aloittaa eläkesäästäminen</h2>
    <div class="round">
        <h3 class="underline">Tiedätkö kuinka paljon saat aikanaan eläkettä? Laske tästä!</h3>
        <div class="line"></div>
        <table>
            <tr>
                <td>Ikä</td>
                <td >Lakisääteinen eläke :</td>
                <td class="left" id="tulos" runat="server"></td>
            </tr>
            <tr>
                <td><asp:Button ID="miinusIka" runat="server" class="orange" Text="-" onClick="miinusIka_Click" /><asp:TextBox ID="ika" runat="server" ViewStateMode="Enabled" ReadOnly="true" class="TextBox" /><asp:Button ID="plusIka" class="orange" runat="server" Text="+" OnClick="plusIka_Click" /> vuotta</td>
                <td >Elinaikakertoimen vaikutus :</td>
                <td class="left" id="ekVaikutus" runat="server"></td>
            </tr>
            <tr>
                <td>Palkka</td>
                <td colspan="2" >Arvio lakisääteisesta eläkkeestä  </td>
                
            </tr>
            <tr>
                <td><asp:Button ID="miinusPalkka" class="orange" runat="server" Text="-" OnClick="miinusPalkka_Click"/><asp:TextBox ID="palkka" ViewStateMode="Enabled" class="TextBox" runat="server" ReadOnly="true" /><asp:Button ID="plusPalkka" class="orange" runat="server" Text="+" OnClick="plusPalkka_Click"/> vuotta</td>
                <td colspan="2" class="bold"> <asp:TextBox ID="elake" runat="server" ReadOnly="true" /> €</td>

            </tr>
        </table>
    </div>
        <h3>2. Riittäkö se sinulle ? Paranna Toimeentuloasi säästämällä</h3>
    <div class="wrapper">
        <asp:Button ID="lueLisaa" Text="Lue lisää" class="lisaa" runat="server" OnClick="lueLisaa_Click"/>
    </div>
    </form>
</body>
</html>
