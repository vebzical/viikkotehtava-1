<%@ Page Language="C#" AutoEventWireup="true" CodeFile="g2456_DBdemo.aspx.cs" Inherits="g2456_DBdemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Salesan viinikellarin</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Esan makoisat viinit</h1>

    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                <asp:BoundField DataField="DeliverID" HeaderText="DeliverID" SortExpression="DeliverID" />
                <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="wineType" HeaderText="wineType" SortExpression="wineType" />
                <asp:BoundField DataField="InStock" HeaderText="InStock" SortExpression="InStock" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ViiniConnectionString1 %>" DeleteCommand="DELETE FROM [wine] WHERE [ID] = @ID" InsertCommand="INSERT INTO [wine] ([Name], [Country], [DeliverID], [Year], [Price], [wineType], [InStock]) VALUES (@Name, @Country, @DeliverID, @Year, @Price, @wineType, @InStock)" ProviderName="<%$ ConnectionStrings:ViiniConnectionString1.ProviderName %>" SelectCommand="SELECT [ID], [Name], [Country], [DeliverID], [Year], [Price], [wineType], [InStock] FROM [wine]" UpdateCommand="UPDATE [wine] SET [Name] = @Name, [Country] = @Country, [DeliverID] = @DeliverID, [Year] = @Year, [Price] = @Price, [wineType] = @wineType, [InStock] = @InStock WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Country" Type="String" />
                <asp:Parameter Name="DeliverID" Type="Int32" />
                <asp:Parameter Name="Year" Type="Int16" />
                <asp:Parameter Name="Price" Type="Double" />
                <asp:Parameter Name="wineType" Type="String" />
                <asp:Parameter Name="InStock" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Country" Type="String" />
                <asp:Parameter Name="DeliverID" Type="Int32" />
                <asp:Parameter Name="Year" Type="Int16" />
                <asp:Parameter Name="Price" Type="Double" />
                <asp:Parameter Name="wineType" Type="String" />
                <asp:Parameter Name="InStock" Type="Int32" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
