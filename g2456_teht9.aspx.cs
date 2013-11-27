using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class g2456_teht9 : System.Web.UI.Page
{
    private int editmode;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            myIni();
        }
        else
        {
            editmode = (int)ViewState["editmode"];

            if (editmode == 1)
            {
                editmodecontrols.Visible = true;

                if (int.Parse(cmbNumberofAnswers.SelectedValue) > 2)
                {
                    generateQuestion(int.Parse(cmbNumberofAnswers.SelectedValue));
                }
            }
            else
            {
                editmodecontrols.Visible = false;
            }
        }
    }

    public void myIni() 
    {
        editmode = 0;
        ViewState["editmode"] = editmode;
        
    }

    public void generateQuestion(int number) 
    {
        pane.Controls.Add(new LiteralControl("<br />"));

        for (int i = 0; i < number; i++)
        {
            pane.Controls.Add(new TextBox());
            pane.Controls.Add(new LiteralControl("<br />"));
        }
    }

    protected void btnEditmode_Click(object sender, EventArgs e)
    {
        var response = base.Response;

        if (editmode == 0)
        {
            editmode = 1;
            ViewState["editmode"] = editmode;
        }
        else 
        {
            editmode = 0;
            ViewState["editmode"] = editmode;
        }

        Page_Load(sender, e);
    }
    protected void btnAddQuestion_Click(object sender, EventArgs e)
    {

    }
}