using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Serialization;

public partial class g2456_VäliPalautteenKateselu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string path = HttpContext.Current.Server.MapPath("~/App_Data/Palautteet.xml");

        palautteet teet = new palautteet();
        teet = (palautteet)XMLDeserialize(path);

        for (int i = 0; i < teet.palaute.Count; i++)
        {
            TableRow row = new TableRow();
            TableCell cell = new TableCell();
            TableCell cell1 = new TableCell();
            TableCell cell2 = new TableCell();
            TableCell cell3 = new TableCell();
            TableCell cell4 = new TableCell();
            TableCell cell5 = new TableCell();
            cell.Text = teet.palaute[i].tekija;
            cell1.Text = teet.palaute[i].opittu;
            cell2.Text = teet.palaute[i].haluanoppia;
            cell3.Text = teet.palaute[i].hyvaa;
            cell4.Text = teet.palaute[i].parannettavaa;
            cell5.Text = teet.palaute[i].muuta;
            row.Cells.Add(cell);
            row.Cells.Add(cell1);
            row.Cells.Add(cell2);
            row.Cells.Add(cell3);
            row.Cells.Add(cell4);
            row.Cells.Add(cell5);

            Table1.Rows.Add(row);
        }
    }

    public static palautteet XMLDeserialize(string filename)
    {
        XmlSerializer ser = null;
        FileStream fs = null;
        palautteet teet = new palautteet();
        ser = new XmlSerializer(typeof(palautteet));
        fs = new FileStream(filename, FileMode.Open);
        teet = (palautteet)ser.Deserialize(fs);
        if (fs != null)
            fs.Close();
        return teet;
    }
    [Serializable()]
    [XmlRoot("palautteet")]
    public class palautteet
    {
        private List<palaute> _palaute;

        [XmlElement("palaute")]
        public List<palaute> palaute
        {
            get;
            set;
        }
    }
    [Serializable()]
    public class palaute
    {
        private string _tekija;
        private string _opittu;
        private string _haluanoppia;
        private string _hyvaa;
        private string _parannettavaa;
        private string _muuta;

        [XmlElement("tekija")]
        public string tekija
        {
            get { return _tekija; }
            set { _tekija = value; }
        }
        [XmlElement("opittu")]
        public string opittu
        {
            get { return _opittu; }
            set { _opittu = value; }
        }
        [XmlElement("haluanoppia")]
        public string haluanoppia
        {
            get { return _haluanoppia; }
            set { _haluanoppia = value; }
        }
        [XmlElement("hyvaa")]
        public string hyvaa
        {
            get { return _hyvaa; }
            set { _hyvaa = value; }
        }
        [XmlElement("parannettavaa")]
        public string parannettavaa
        {
            get { return _parannettavaa; }
            set { _parannettavaa = value; }
        }
        [XmlElement("muuta")]
        public string muuta
        {
            get { return _muuta; }
            set { _muuta = value; }
        }
    }
}