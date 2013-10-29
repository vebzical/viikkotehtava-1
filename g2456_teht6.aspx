<%@ Page Title="" Language="C#" MasterPageFile="~/teht3.master" AutoEventWireup="true" CodeFile="g2456_teht6.aspx.cs" Inherits="g2456_teht6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="seura" DataValueField="seura" OnTextChanged="ListBox1_TextChanged"></asp:ListBox>
    <asp:ListBox ID="ListBox2" runat="server" DataSourceID="SqlDataSource3" DataTextField="pelipaikka" DataValueField="pelipaikka" OnTextChanged="ListBox2_TextChanged" AutoPostBack="True"></asp:ListBox>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource2" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="sukunimi" HeaderText="sukunimi" SortExpression="sukunimi" />
            <asp:BoundField DataField="etunimi" HeaderText="etunimi" SortExpression="etunimi" />
            <asp:BoundField DataField="seura" HeaderText="seura" SortExpression="seura" />
            <asp:BoundField DataField="nro" HeaderText="nro" SortExpression="nro" />
            <asp:BoundField DataField="pelipaikka" HeaderText="pelipaikka" SortExpression="pelipaikka" />
            <asp:BoundField DataField="ottelut" HeaderText="ottelut" SortExpression="ottelut" />
            <asp:BoundField DataField="maalit" HeaderText="maalit" SortExpression="maalit" />
            <asp:BoundField DataField="syötöt" HeaderText="syötöt" SortExpression="syötöt" />
            <asp:BoundField DataField="pisteet" HeaderText="pisteet" SortExpression="pisteet" />
            <asp:BoundField DataField="plus" HeaderText="plus" SortExpression="plus" />
            <asp:BoundField DataField="miinus" HeaderText="miinus" SortExpression="miinus" />
            <asp:BoundField DataField="plusmiinus" HeaderText="plusmiinus" SortExpression="plusmiinus" />
            <asp:BoundField DataField="jäähyt" HeaderText="jäähyt" SortExpression="jäähyt" />
            <asp:BoundField DataField="peliaika" HeaderText="peliaika" SortExpression="peliaika" />
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
        SelectCommand="SELECT * FROM [Pisteet]  WHERE [seura] = ? ORDER BY [sukunimi]">
        <SelectParameters>
            <asp:ControlParameter ControlID="ListBox1" PropertyName="SelectedValue"
                Name="seura" Type="String" DefaultValue=""/>
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
        SelectCommand="SELECT * FROM [Pisteet] ORDER BY [sukunimi]">
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
        SelectCommand="SELECT DISTINCT pelipaikka FROM [Pisteet]">
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
        SelectCommand="SELECT * FROM [Pisteet]  WHERE [pelipaikka] = ? ORDER BY [pisteet] DESC">
        <SelectParameters>
            <asp:ControlParameter ControlID="ListBox2" PropertyName="SelectedValue"
                Name="pelipaikka" Type="String" DefaultValue=""/>
        </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>

