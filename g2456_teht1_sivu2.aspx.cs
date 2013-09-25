using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class g2456_teht1_sivu2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (String.IsNullOrEmpty((string)Session["laskuri"]))
        {
            Session["laskuri"] = "0";
        }
        string nimi = (string)Session["nimi"];

        if (!String.IsNullOrEmpty(nimi))
        {
            parametri.Text = nimi;
        }
        else if (!String.IsNullOrEmpty(Request.QueryString["nimi"]))
        {

            parametri.Text = Request.QueryString["nimi"];
        }
        else if (!String.IsNullOrEmpty(Request.Cookies["nimi"].Value))
        {
            parametri.Text = Request.Cookies["nimi"].Value;
        }
        else
        {
            parametri.Text = "vakio";
        }
    }

    protected void muutaEuroiksi_Click(object sender, EventArgs e)
    {
        double markat;
        if (!Double.TryParse(laskuri.Text, out markat))
        {
            tulos.InnerHtml = "Anna markat oikeassa muodossa. Huoma käytä ',' pisteen sijaan ";
        }
        else
        {
            double eurot = markat * 5.64;
            tulos.InnerHtml = "" + eurot;
            int lasku = Int32.Parse((string)Session["laskuri"]) + 1;
            Session["laskuri"] = "" + lasku;
            tulokset.InnerHtml = "" + lasku;
        }
    }
}