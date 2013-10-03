using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Xml;

public partial class g2456_rssfeed : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    #region Napit
    protected void btnGetLiiga_Click(object sender, EventArgs e)
    {
        GetFeedsFrom("Liiga");
    }
    protected void btnGetMicro_Click(object sender, EventArgs e)
    {
        GetFeedsFrom("Micro");
    }
    protected void btnGetIS_Click(object sender, EventArgs e)
    {
        GetFeedsFrom("IS");
    }
    #endregion
    protected void GetFeedsFrom(string FeedSource)
    {
        string url = null;

        switch (FeedSource)
        {
            case "Liiga":
                url = ConfigurationManager.AppSettings["rssfeeditSF"];
                break;
            case "Micro":
                url = ConfigurationManager.AppSettings["rssfeeditMS"];
                break;
            case "IS":
                url = ConfigurationManager.AppSettings["rssfeeditIS"];
                break;
            default:
                break;
        }

        lblBody.Text = url;
        //Luetaan XML XmlDocument olioon
        XmlDocument doc = new XmlDocument();
        myDataSource.DataFile = url;
        doc = myDataSource.GetXmlDocument();

        //1 Vaihe: Luetaan Channel title
        XmlNode node = doc.SelectSingleNode("/rss/channel");
        string otsikko = node["title"].InnerText;
        lblHeader.Text = otsikko;

        //2 Vaihe: Loopitetaan item-nodit läpi
        XmlNodeList nodes = doc.SelectNodes("/rss/channel/item");
        int i = 0;
        string rsstitle;
        string rsslink;

        foreach (XmlNode item in nodes)
        {
            i++;
            //uusi rivi tableen
            TableRow row = new TableRow();
            //riville kaksi solua, ekaan nro ja toiseen hyperlinkki
            TableCell cell = new TableCell();
            cell.Text = i.ToString();
            //toka
            TableCell cell2 = new TableCell();
            rsstitle = item["title"].InnerText;
            rsslink = item["link"].InnerText;
            HyperLink hl = new HyperLink();
            hl.Text = rsstitle;
            hl.NavigateUrl = rsslink;
            cell2.Controls.Add(hl);
            //Lisätään solut riville ja rivit tauluun
            row.Cells.Add(cell);
            row.Cells.Add(cell2);
            myDataTable.Rows.Add(row);
        }
    }

}