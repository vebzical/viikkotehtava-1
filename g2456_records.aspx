<%@ Page Language="C#" AutoEventWireup="true" CodeFile="g2456_records.aspx.cs" Inherits="g2456_records" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:XmlDataSource ID="MyRecords" DataFile="~/App_Data/Records.xml"  runat="server" TransformFile="~/App_Data/Records.xsl"></asp:XmlDataSource>
        <asp:XmlDataSource ID="MyRecords1" DataFile="~/App_Data/Records.xml" runat="server"></asp:XmlDataSource>
        <asp:XmlDataSource ID="MyRecords2" DataFile="~/App_Data/Records2.xml" runat="server"></asp:XmlDataSource>
        <h1>Osta sie hyvä levy</h1>
        <asp:DataGrid ID="gvLevyt" DataSourceID="MyRecords2" runat="server" AutoGenerateColumns="true"></asp:DataGrid>
    </div>
    </form>
</body>
</html>
