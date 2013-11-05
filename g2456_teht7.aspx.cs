using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class g2456_teht7 : System.Web.UI.Page
{
    List<Auto> autoLista = new List<Auto>();
    private string GridViewSortDirection
    {
        get { return ViewState["SortDirection"] as string ?? "ASC"; }
        set { ViewState["SortDirection"] = value; }
    }
    private string GridViewSortExpression
    {
        get { return ViewState["SortExpression"] as string ?? string.Empty; }
        set { ViewState["SortExpression"] = value; }
    }
    private string GetSortDirection()
    {
        switch (GridViewSortDirection)
        {
            case "ASC":
                GridViewSortDirection = "DESC";
                break;
            case "DESC":
                GridViewSortDirection = "ASC";
                break;
        }

        return GridViewSortDirection;
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            initMyStuff();
        }
        else
        {
            autoLista = (List<Auto>)ViewState["autoLista"];
        }
    }
    protected void initMyStuff() 
    {
        autoLista = BLAutot.HaeAutot();
        toGridView(autoLista);
    }
    protected void toGridView(List<Auto> autoLista)
    {
        ViewState["autoLista"] = autoLista;

        autoNakyma.DataSource = autoLista;
        autoNakyma.DataBind();
    }
    protected void autoNakyma_Sorting(object sender, GridViewSortEventArgs e)
    {
        GridViewSortExpression = e.SortExpression;
        toGridView(BLAutot.SortList(autoLista, GridViewSortExpression, GetSortDirection()));
    }
    protected void autoNakyma_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        autoNakyma.PageIndex = e.NewPageIndex;
        toGridView(autoLista);
    }
    protected void autoNakyma_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        autoLista.RemoveAt(e.RowIndex);
        toGridView(autoLista);
    }
    protected void autoNakyma_RowEditing(object sender, GridViewEditEventArgs e)
    {
        autoNakyma.EditIndex = e.NewEditIndex;
        toGridView(autoLista);
    }
    protected void autoNakyma_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        autoNakyma.EditIndex = -1;
        toGridView(autoLista);
    }
    protected void autoNakyma_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        GridViewRow row = autoNakyma.Rows[e.RowIndex];

        Regex reg = new Regex(@"^[a-zA-Z'.\s]{7,7}$");

        autoLista[e.RowIndex].Merkki = ((TextBox)(row.Cells[1].Controls[0])).Text;
        autoLista[e.RowIndex].Aid = ((TextBox)(row.Cells[2].Controls[0])).Text;
        autoLista[e.RowIndex].Rekkari = ((TextBox)(row.Cells[3].Controls[0])).Text;
        autoLista[e.RowIndex].Malli = ((TextBox)(row.Cells[4].Controls[0])).Text;
        autoLista[e.RowIndex].Vm = int.Parse(((TextBox)(row.Cells[5].Controls[0])).Text);
        autoLista[e.RowIndex].MyyntiHinta = int.Parse(((TextBox)(row.Cells[6].Controls[0])).Text);
        autoLista[e.RowIndex].SOstoHinta = int.Parse(((TextBox)(row.Cells[7].Controls[0])).Text);

        autoNakyma.EditIndex = -1;
        toGridView(autoLista);
    }
    protected void addNew_Click(object sender, EventArgs e)
    {
        autoLista.Add(new Auto());
        autoLista = BLAutot.SortList(autoLista, "Malli", "ASC");

        autoNakyma.EditIndex = 0;

        toGridView(autoLista);

    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        BLAutot.VieAutot(autoLista);
    }
}