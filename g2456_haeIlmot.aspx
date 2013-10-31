<%@ Page Title="" Language="C#" MasterPageFile="~/teht3.master" AutoEventWireup="true" CodeFile="g2456_haeIlmot.aspx.cs" Inherits="g2456_haeIlmot" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:Label ID="lblInfo" runat="server"></asp:Label>
    <br />
    Sukunimi:<asp:TextBox ID="txtSukunimi" runat="server"></asp:TextBox>
    <br />
    Opintojakso:<asp:DropDownList ID="cmbOpintojakso" runat="server" DataSourceID="sqlComboBoxItems" DataTextField="course" DataValueField="course" OnSelectedIndexChanged="cmbOpintojakso_SelectedIndexChanged">
    </asp:DropDownList>

    <asp:SqlDataSource ID="sqlComboBoxItems" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DemoxOyConnectionString %>" 
        SelectCommand="SELECT DISTINCT [course] FROM [lasnaolot]">
    </asp:SqlDataSource>

    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Hae" />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AllowSorting="True">
    <Columns>
        <asp:BoundField DataField="lastname" HeaderText="lastname" SortExpression="lastname" />
        <asp:BoundField DataField="firstname" HeaderText="firstname" SortExpression="firstname" />
        <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
    </Columns>
</asp:GridView>

<asp:SqlDataSource ID="sqlHakuSukuJaKurssinNimellä" runat="server" 
    ConnectionString="<%$ ConnectionStrings:DemoxOyConnectionString %>" 
    SelectCommand="SELECT [lastname], [firstname], [date], [course] FROM [lasnaolot] WHERE (([course] = @course) AND ([lastname] = @lastname))">
    <SelectParameters>
        <asp:ControlParameter ControlID="cmbOpintojakso" Name="course" PropertyName="SelectedValue" Type="String" />
        <asp:ControlParameter ControlID="txtSukunimi" Name="lastname" PropertyName="Text" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>

    <asp:SqlDataSource ID="sqlHakuKurssinNimellä" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DemoxOyConnectionString %>" 
        SelectCommand="SELECT [lastname], [firstname], [date], [course] FROM [lasnaolot] WHERE ([course] = @course)">
        <SelectParameters>
            <asp:ControlParameter ControlID="cmbOpintojakso" Name="course" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>

