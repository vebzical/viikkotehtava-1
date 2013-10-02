using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class teht3 : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void MainMenu_MenuItemClick(object sender, MenuEventArgs e)
    {
        var response = base.Response;

        switch (e.Item.Value)
        {
            case "Home": response.Redirect("~/g2456_teht3_home.aspx");
                break;
            case "About": response.Redirect("~/g2456_teht3_about.aspx");
                break;
            case "Salesa": response.Redirect("~/g2456_teht3_salesa.aspx");
                break;
            case "Contact": response.Redirect("~/g2456_teht3_contact.aspx");
                break;
            default:
                break;
        }
    }
}
