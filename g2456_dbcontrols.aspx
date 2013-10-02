<%@ Page Language="C#" AutoEventWireup="true" CodeFile="g2456_dbcontrols.aspx.cs" Inherits="g2456_dbcontrols" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:SqlDataSource
            ID="srcMovies"
            ConnectionString="Data Source=eight.labranet.jamk.fi;Initial Catalog=Movie;Persist Security Info=True;User ID=koodari;Password=koodari13"
            SelectCommand="SELECT title, director, year FROM Movies ORDER BY title"
            runat="server">
        </asp:SqlDataSource>

        <asp:GridView
            ID="GridView1"
            DataSourceID="srcMovies"
            runat="server">
            
        </asp:GridView>
        <asp:DataList
            ID="DataList1"
            DataSourceID="srcMovies"
            runat="server">
            <ItemTemplate>
                Elokuvan <%#Eval("title") %> on ohjannut <%#Eval("director") %>
            </ItemTemplate>
        </asp:DataList>
        <asp:Repeater ID="Repeater1" DataSourceID="srcMovies" runat="server">
            <ItemTemplate>
                Movie <%#Eval("title") %> directed by <b><%#Eval("director") %></b></br>
            </ItemTemplate>
        </asp:Repeater>
        <asp:ListView ID="ListView1" DataSourceID="srcMovies" runat="server">
            <LayoutTemplate>
                <div id="itemPlaceholder" runat="server"></div>
                <asp:DataPager ID="pager1" PageSize="4" runat="server">
                    <Fields>
                        <asp:NumericPagerField />
                    </Fields>
                </asp:DataPager>
            </LayoutTemplate>

            <ItemTemplate>
                <b>Movie <%#Eval("title") %> </b>directed by <%#Eval("director") %></br>
            </ItemTemplate>
        </asp:ListView>
    
    </div>
    </form>
</body>
</html>
