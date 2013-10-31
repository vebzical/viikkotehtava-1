using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class g2456_teht7 : System.Web.UI.Page
{
    List<Auto> autoLista = new List<Auto>();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            initMyStuff();
        }
        else
        {

        }
    }

    protected void initMyStuff() 
    {
        autoLista = BLAutot.HaeAutot();

        autoNakyma.DataSource = autoLista;
        autoNakyma.DataBind();
    }
    protected void autoNakyma_Sorting(object sender, GridViewSortEventArgs e)
    {
        autoLista = BLAutot.sortList(autoLista, e.SortDirection, e.SortExpression);

        autoNakyma.DataSource = autoLista;
        autoNakyma.DataBind();
    }


}