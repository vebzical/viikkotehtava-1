using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class g2456_valuttamunnin : System.Web.UI.Page
{
    private const float BitCoinRate = 94.71F;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            //Muutetaan bitit äyreiksi
            lblcurrency.Text = string.Format("{0:.0000} euroa", float.Parse(txtkolikot.Text) * BitCoinRate);
            //Näytetään muunnokset listboxissa
            lstyksi.Items.Add(txtkolikot.Text + "->" + lblcurrency.Text);
            lstkaksi.Items.Add(txtkolikot.Text + "->" + lblcurrency.Text);
        }
        catch (Exception ex)
        {
            lblcurrency.Text = ex.Message.ToString();
        }
    }
}