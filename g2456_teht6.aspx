<%@ Page Title="" Language="C#" MasterPageFile="~/teht3.master" AutoEventWireup="true" CodeFile="g2456_teht6.aspx.cs" Inherits="g2456_teht6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource5" DataTextField="seura" DataValueField="seura" OnTextChanged="ListBox1_TextChanged"></asp:ListBox>
    <asp:ListBox ID="ListBox2" runat="server" DataSourceID="SqlDataSource3" DataTextField="pelipaikka" DataValueField="pelipaikka" OnTextChanged="ListBox2_TextChanged" AutoPostBack="True"></asp:ListBox>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource2" AllowSorting="True" AllowPaging="True">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
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
    <br />
    <h1>Lisää uusi pelaaja</h1>

    Etunimi:<asp:TextBox ID="txtEtu" runat="server"></asp:TextBox>
    <br />
    Sukunimi:<asp:TextBox ID="txtSuku" runat="server"></asp:TextBox>
    <br />
    Seura:<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource5" DataTextField="seura" DataValueField="seura">
    </asp:DropDownList>
    <br />
    Pelipaikka:<asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="pelipaikka" DataValueField="pelipaikka">
    </asp:DropDownList>
    <br />
    <asp:Button ID="btnLisaa" runat="server" Text="Lisää uusi pelaaja" OnClick="btnLisaa_Click" />

    <br />
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
        SelectCommand="SELECT * FROM [Pisteet]" 
        DeleteCommand="DELETE FROM [Pisteet] WHERE (([id] = ?) OR ([id] IS NULL AND ? IS NULL))" 
        UpdateCommand="UPDATE Pisteet SET sukunimi=@sukunimi,etunimi=@etunimi,seura=@seura,
            nro=@nro,pelipaikka=@pelipaikka,ottelut=@ottelut,maalit=@maalit,syötöt=@syötöt,
            pisteet=@pisteet,plus=@plus,miinus=@miinus,plusmiinus=@plusmiinus,jäähyt=@jäähyt,
            peliaika=@peliaika WHERE id=@id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int16" />
        </DeleteParameters>

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

    <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
        SelectCommand="SELECT DISTINCT [seura] FROM [Pelaajat]">
    </asp:SqlDataSource>

</asp:Content>

