using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class g2456_teht6 : System.Web.UI.Page
{
    DataSet setti;
    DataTable poyta;
    OleDbConnection yhteys;
    OleDbCommand komento;
    OleDbDataAdapter adapteri;

    protected void Page_Load(object sender, EventArgs e)
    {
        string polku = "Provider = Microsoft.Jet.OLEDB.4.0;Data Source="+ Server.MapPath("~/App_Data/SMLiiga.accdb");
        lblError.Text = polku;
        haeTiedot(polku);
        GridView1.DataSource = poyta;
        GridView1.DataBind();
    }
    protected void btnKaikkiPelaajat_Click(object sender, EventArgs e)
    {

    }
    protected void btnJarjesta_Click(object sender, EventArgs e)
    {

    }

    private void haeTiedot(string polku) 
    {
        try
        {
            yhteys = new OleDbConnection(polku);
        }
        catch (Exception ex)
        {
            lblError.Text = ex.ToString();
        }

        try
        {
            komento = new OleDbCommand("SELECT * FROM Pisteet", yhteys);
            adapteri = new OleDbDataAdapter(komento);

            yhteys.Open();
            adapteri.Fill(setti, "Pisteet");

            yhteys.Close();
        }
        catch (Exception ex)
        {
            lblError.Text = ex.ToString();
        }

        poyta = setti.Tables["Pisteet"];

    }
}