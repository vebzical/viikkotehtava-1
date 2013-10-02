<%@ Page Language="C#" AutoEventWireup="true" CodeFile="g2456_dbcontrols2.aspx.cs" Inherits="g2456_dbcontrols2" %>

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

        <asp:DetailsView 
            ID="DetailsView1" 
            DataSourceID="srcMovies" 
            runat="server" 
            AllowPaging="true">

        </asp:DetailsView>
        <asp:FormView 
            ID="FormView1"
            DataSourceID="srcMovies" 
            runat="server" 
            AllowPaging="true">
            
            <ItemTemplate>
                <h3><%#Eval("title") %></h3> directed by <%#Eval("director") %>
            </ItemTemplate>
        </asp:FormView>
    </div>
    </form>
</body>
</html>
