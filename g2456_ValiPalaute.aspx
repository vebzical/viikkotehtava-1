<%@ Page Language="C#" AutoEventWireup="true" CodeFile="g2456_ValiPalaute.aspx.cs" Inherits="g2456_ValiPalaute" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="~/CSS/demoSite.css" rel="stylesheet" type="text/css"/>
    <title>Salesan välipalaute</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h2>Opintojakson palaute</h2>
        <table style="width:100%;" border="1">
            <tr>
                <td>&nbsp;
                    <h1>Anna palaute</h1>
                    <asp:Label Text="Pvm:" runat="server"></asp:Label>
                    <asp:TextBox Text="yyyy-MM-dd" ID="txtPvm" TextMode="Date" runat="server"></asp:TextBox>

                    <asp:Label Text="Nimi:" runat="server"></asp:Label>
                    <asp:TextBox ID="txtNimi" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="nameRegex" runat="server"
                        ControlToValidate="txtNimi"
                        ValidationExpression="^[a-öA-Ö.\s]{1,40}$"
                        ErrorMessage="Tarkista nimi!">
                    </asp:RegularExpressionValidator>
                    <br />
                    <asp:Label Text="Olen oppinut:" runat="server"></asp:Label>
                    <asp:Textbox TextMode="MultiLine" ID="txtOppinut" runat="server"></asp:Textbox>
                    <asp:RegularExpressionValidator ID="oppinutRegex" runat="server"
                        ControlToValidate="txtOppinut"
                        ValidationExpression="^[\w]{1,100}$"
                        ErrorMessage="Tarkista kohta 'Olen oppinut'!">
                    </asp:RegularExpressionValidator>
                    <br />
                    <asp:Label Text="Haluan oppia:" runat="server"></asp:Label>
                    <asp:TextBox TextMode="MultiLine" runat="server" ID="txtHaluan"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="haluanRegex" runat="server"
                        ControlToValidate="txtHaluan"
                        ValidationExpression="^[\w]{1,100}$"
                        ErrorMessage="Tarkista kohta 'Halaun Oppia'!">
                    </asp:RegularExpressionValidator>
                </td>
                <td>&nbsp;
                    <h1>Palaute jatkuu</h1>
                    <asp:Label Text="Hyvää:" runat="server"></asp:Label>
                    <asp:TextBox ID="txtHyvaa" TextMode="MultiLine" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="hyvaaRegex" runat="server"
                        ControlToValidate="txtHyvaa"
                        ValidationExpression="^[\w]{1,100}$"
                        ErrorMessage="Tarkista kohta 'Hyvää'!">
                    </asp:RegularExpressionValidator>
                    <br />
                    <asp:Label Text="Parannettavaa:" runat="server"></asp:Label>
                    <asp:TextBox ID="txtParannettavaa" TextMode="MultiLine" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="parannettavaaRegex" runat="server"
                        ControlToValidate="txtParannettavaa"
                        ValidationExpression="^[\w]{1,100}$"
                        ErrorMessage="Tarkista kohta 'Parannettavaa'!">
                    </asp:RegularExpressionValidator>
                    <br />
                    <asp:Label Text="Muuta" runat="server"></asp:Label>
                    <asp:TextBox ID="txtMuuta" TextMode="MultiLine" runat="server"></asp:TextBox>
                    <br />
                </td>
            </tr>
            <tr>
                <td>&nbsp;
                    <asp:Label ID="alaViite" Text="Kentät eivät saa olla tyhjiä!" runat="server"></asp:Label>
                </td>
                <td>&nbsp;
                    <asp:button text="Lähetä palaute" ID="btnLahetaPalaute" OnClick="btnLahetaPalaute_Click" CssClass="submitButton" runat="server"/>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
