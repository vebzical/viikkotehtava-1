using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

public partial class g2456_FinnKinoMovies : System.Web.UI.Page
{
    string urlTotTheatres;
    string urlToMovies;

    protected void Page_Load(object sender, EventArgs e)
    {
        urlTotTheatres = ConfigurationManager.AppSettings["finnkinoteatterit"];
        urlToMovies = ConfigurationManager.AppSettings["finnkinoelokuvat"];
    }
    protected void btnGetTheatres_Click(object sender, EventArgs e)
    {
        //Haetaan leffat listboxiin
        XmlDocument doc = new XmlDocument();
        doc.Load(urlTotTheatres);
        XmlNodeList nodes = doc.DocumentElement.SelectNodes("TheatreArea");

        foreach (XmlNode node in nodes)
        {
            ListItem li = new ListItem(node["Name"].InnerText, node["ID"].InnerText);
            myListBox.Items.Add(li);
        }


    }
    protected void myListBox_SelectedIndexChanged(object sender, EventArgs e)
    {
        string theatreShows = urlToMovies + myListBox.SelectedItem.Value;
        myDataSource.DataFile = theatreShows;
        myRepeater.DataSource = myDataSource;
        myRepeater.DataBind();

    }
}