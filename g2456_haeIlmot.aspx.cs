using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class g2456_haeIlmot : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void cmbOpintojakso_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (txtSukunimi.Text.Length <= 1 && cmbOpintojakso.SelectedValue != null)
        {
            GridView1.DataSourceID = "sqlHakuKurssinNimellä";
            GridView1.DataBind();

            lblInfo.Text = "Kursille ilmoittauduttu " + GridView1.Rows.Count + " kertaa.";
        }
        else
        {
            GridView1.DataSourceID = "sqlHakuSukuJaKurssinNimellä";
            GridView1.DataBind();

            lblInfo.Text = "Kursille ilmoittauduttu " + GridView1.Rows.Count + " kertaa.";
        }
    }
}