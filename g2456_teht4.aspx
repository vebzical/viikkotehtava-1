<%@ Page Title="" Language="C#" MasterPageFile="~/teht3.master" AutoEventWireup="true" CodeFile="g2456_teht4.aspx.cs" Inherits="g2456_teht4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:TextBox ID="TextBox1" runat="server" ToolTip="Hae merkin tai mallin mukaan" ></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Hae" onClick="Button1_Click"/>
    <asp:ListBox ID="ListBox1" runat="server" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged" AutoPostBack="True" 
        style="float:left;" ViewStateMode="Enabled" EnableViewState="true"  ></asp:ListBox> 

    <asp:ListView ID="ListView1" runat="server" onSorting="ListView1_Sorting"> 
    <LayoutTemplate>
        <table cellpadding="2" width="640px" border="1" runat="server" style="margin:10px 10px 10px 10px;" id="tblCars">
            <tr id="Tr1" runat="server">
             <th id="Th1" runat="server">Merkki</th>
             <th id="Th2" runat="server">Malli</th>
             <th id="Th3" runat="server">Rekkari</th>
             <th id="Th4" runat="server">Vuosi Malli</th>
             <th id="Th5" runat="server">Myynti Hinta <asp:LinkButton ID="sortByPrice" runat="server" 
                 CommandName="Sort" CommandArgument="MyyntiHinta" >Sort by price</asp:LinkButton></th>
             <th id="Th6" runat="server">Sisäänosto Hinta</th>
            </tr>
            <tr runat="server" id="itemPlaceholder" />
        </table>
    </LayoutTemplate>

    <ItemTemplate>
    <tr id="Tr2" runat="server">
        <td>
            <asp:Label ID="lblMerkki" runat="Server" Text='<%#Eval("Merkki") %>' />
        </td>
        <td>
            <asp:Label ID="lblMalli" runat="Server" Text='<%#Eval("Malli") %>' />
        </td>
        <td >
            <asp:Label ID="lblRekkari" runat="Server" Text='<%#Eval("Rekkari") %>' />
        </td>
        <td >
            <asp:Label ID="lblVm" runat="Server" Text='<%#Eval("Vm") %>' />
        </td>
        <td >
            <asp:Label ID="lblMyynti" runat="Server" Text='<%#Eval("MyyntiHinta") %>' />
        </td>
        <td >
            <asp:Label ID="lblSOstoHinta" runat="Server" Text='<%#Eval("SOstoHinta") %>' />
        </td>
    </tr>
    </ItemTemplate>

    </asp:ListView>
    <div runat="server" id="er"></div> 


</asp:Content>

