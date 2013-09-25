using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class g2456_teht1_sivu1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void asParameter_Click(object sender, EventArgs e)
    {
        // Get response.
        var response = base.Response;
        Session["nimi"] = null;
        string parametri = nimi.Text;
        // Redirect temporarily.
        // ... Don't throw an HttpException to terminate.
        response.Redirect("g2456_teht1_sivu2.aspx?nimi=" + parametri, false);
    }

    protected void asSession_Click(object sender, EventArgs e)
    {
        // Get response.
        var response = base.Response;
        Session["nimi"] = nimi.Text;
        // Redirect temporarily.
        // ... Don't throw an HttpException to terminate.
        response.Redirect("g2456_teht1_sivu2.aspx", false);
    }

    protected void asCookie_Click(object sender, EventArgs e)
    {
        string cookieValue = nimi.Text;
        Session["nimi"] = null;
        Response.Cookies["nimi"].Value = cookieValue;
        Response.Redirect("g2456_teht1_sivu2.aspx", false);
    }
}