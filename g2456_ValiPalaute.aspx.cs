using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Xml.Serialization;
using System.Text;
using System.IO;

public partial class g2456_ValiPalaute : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtPvm.Text = DateTime.Now.ToString("yyyy-MM-dd");
    }
    protected void btnLahetaPalaute_Click(object sender, EventArgs e)
    {
        XmlDocument doc = new XmlDocument();
        doc.Load(MapPath("~/App_Data/Palautteet.xml"));

        XmlElement newElem = doc.CreateElement("palaute");

        string dateNow = Convert.ToString(DateTime.Today.ToShortDateString());
        newElem.InnerXml = "<pvm>" + dateNow + "</pvm>" +
            "<tekija>" + this.txtNimi.Text + "</tekija>" +
            "<opittu>" + this.txtOppinut.Text + "</opittu>" +
            "<haluanoppia>" + this.txtHaluan.Text + "</haluanoppia>" +
            "<hyvaa>" + this.txtHyvaa.Text + "</hyvaa>" +
            "<parannettavaa>" + this.txtParannettavaa.Text + "</parannettavaa>" +
            "<muuta>" + this.txtMuuta.Text + "</muuta>";

        doc.DocumentElement.SelectNodes("/palautteet")[0].AppendChild(newElem);

        XmlTextWriter wrtr = new XmlTextWriter(MapPath("~/App_Data/Palautteet.xml"), System.Text.Encoding.UTF8);
        doc.WriteTo(wrtr);
        wrtr.Close();
    }
}