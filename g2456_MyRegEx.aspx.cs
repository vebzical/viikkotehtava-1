using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class g2456_MyRegEx : System.Web.UI.Page
{
    List<string> asd = new List<string>();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        asd.Add(txtEmail.Text);
        asd.Add(txtName.Text);

        lstbox.DataSource = asd;
        lstbox.DataBind();
    }
}