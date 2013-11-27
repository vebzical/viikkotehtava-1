using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    HttpCookie myCookie = new HttpCookie("UserSettings");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Login1.RememberMeSet)
        {
            myCookie.Expires = DateTime.Now.AddDays(14d);

            if (myCookie["remember"] == "true")
            {
                Login1.UserName = myCookie["username"];
            }

            myCookie["remember"] = "true";
        }
    }
    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        if (BLAutot.authenticateUser(
            BLAutot.regexString(Login1.UserName.ToString(), "userName"),
            BLAutot.regexString(Login1.Password.ToString(), "password")))
        {
            e.Authenticated = true;
        }
        else
        {
            e.Authenticated = false;
        }
    }
    protected void Login1_LoggedIn(object sender, EventArgs e)
    {
        if (myCookie["remember"] == "true")
        {
            myCookie["username"] = Login1.UserName.ToString();
        }
        FormsAuthentication.SetAuthCookie(Login1.UserName, true);
        Session["UserAuthentication"] = Login1.UserName.ToString();
    }
    protected void Login1_LoginError(object sender, EventArgs e)
    {
        Session["UserAuthentication"] = null;
    }
}