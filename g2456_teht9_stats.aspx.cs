using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class g2456_teht9_stats : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            myInit();
        }
        else
        {
            if (Session["UserAuthentication"] != null)
            {
                StatsDiv.Visible = true;
                populatePane();
            }
        }
    }

    private void myInit()
    {
        if (Session["UserAuthentication"] != null)
        {
            StatsDiv.Visible = true;
            populatePane();
        }
    }

    private void populatePane() 
    {
        AnswerList a = new AnswerList();

        Serialisointi.DeSerialisoiVastauksetXml(HttpContext.Current.Server.MapPath("~/App_Data/SavedQuestions.xml"), ref a);

        pane.Controls.Add(new LiteralControl("<br/>"));

        Label lbl = new Label();
        lbl.Text = "Vastauksia tuli yhteensä: "+a.vastaukset.Count().ToString();

        pane.Controls.Add(new Label());

    }
    protected void btnEmpty_Click(object sender, EventArgs e)
    {
        AnswerList a = new AnswerList();
        Serialisointi.SerialisoiXmlVastaukset(HttpContext.Current.Server.MapPath("~/App_Data/SavedQuestions.xml"), a);
    }
}