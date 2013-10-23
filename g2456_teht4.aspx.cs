using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Xml.Serialization;
using System.IO;

public partial class g2456_teht4 : System.Web.UI.Page
{
    public List<Auto> Autot { get; set; }
    public string SortExpression { 
        get { 
            return (string)ViewState["SortExpression"]; 
        } 
        set { 
            ViewState["SortExpression"] = value; 
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack) 
        {
            initMyStuff();
        }
        else
        {
            Autot=(List<Auto>)ViewState["AutotLista"];
        }
    }

    private void initMyStuff()
    {
        try
        {
            AutoLista autot = new AutoLista();
            Serialisointi.DeSerialisoiXml(Server.MapPath("~/App_Data/WanhatAutot.xml"), ref autot);
            Random random = new Random();
            List<Auto> nelja = new List<Auto>();

            while (nelja.Count < 4)
            {
                int luku = random.Next(0, autot.Autot.Count - 1);
                if (!nelja.Contains(autot.Autot.ElementAt(luku)))
                {
                    nelja.Add(autot.Autot.ElementAt(luku));
                }
            }
            Autot = autot.Autot;
            ViewState["AutotLista"] = Autot;
            List<string> merkit = new List<string>();
            merkit.Add("Kaikki");

            foreach (Auto auto in autot.Autot)
            {
                string merkki = auto.Merkki;

                if (!merkit.Contains(merkki))
                {
                    merkit.Add(merkki);    
                }
            }

            ListBox1.DataSource = merkit;
            ListBox1.DataBind();
            ListBox1.Height = 150; 
            SortExpression = "DESC";
            loadListWiew(nelja);
        }
        catch (Exception ex)
        {
            er.InnerText = ex.Message; 
        }
    }

    protected void loadListWiew(List<Auto>a) 
    {
        ViewState["currentAutot"] = a; 
        ListView1.DataSource = a;
        ListView1.DataBind();
    }

    public void filterAutot(string merkki) 
    {
       List<Auto> results= Autot.FindAll(
            delegate(Auto a)
            {
                return a.Merkki == merkki;
            });

        loadListWiew(results);
    }

    protected List<Auto> OrderList(List<Auto> autot) 
    {
        if (SortExpression == ("ASC"))
        {
            var inOrder = autot.OrderBy(Auto => Auto.MyyntiHinta).ToList<Auto>();
            autot = inOrder as List<Auto>;
        }
        else
        {
            var inOrder = autot.OrderByDescending(Auto => Auto.MyyntiHinta).ToList<Auto>();
            autot = inOrder as List<Auto>;
        }

        return autot;
    }

    protected void Page_PreRender(object sender, EventArgs e) 
    {
        List<Auto> currentAutot = (List<Auto>)ViewState["currentAutot"];

        if (!string.IsNullOrEmpty(SortExpression))
        {
            currentAutot = OrderList(currentAutot);
        }

        loadListWiew(currentAutot);
    }

    protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ListBox1.SelectedIndex > 0)
        {
            filterAutot(ListBox1.SelectedValue);
        }
        else
        {
            loadListWiew(Autot);
        }
    }

    protected void ListView1_Sorting(object sender, ListViewSortEventArgs e)
    {
        if (SortExpression == ("ASC"))
        {
            SortExpression = "DESC";
        }
        else
        {
            SortExpression = "ASC";
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string haku = TextBox1.Text;
        List<Auto> results = Autot.FindAll(
            delegate(Auto a) 
            { 
                return a.Merkki.ToLower().Contains(haku.ToLower()) || a.Malli.ToLower().Contains(haku.ToLower()); 
            }
        );

        loadListWiew(results);
    }

    #region luokat
    #region serialisointi


    public class Serialisointi
    {
        public static void DeSerialisoiXml(string filePath, ref AutoLista autoja)
        {
            XmlSerializer deserializer = new XmlSerializer(typeof(AutoLista));
            try
            {
                FileStream xmlFile = new FileStream(filePath, FileMode.Open);
                autoja = (AutoLista)deserializer.Deserialize(xmlFile);
                xmlFile.Close();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
            }
        }
    }

    #endregion

    [Serializable()]
  	[XmlRoot("Wanhatautot")]
  	public class AutoLista 
  	{
  	    public AutoLista()
  	    {
  	        Autot = new List<Auto>();
  	    }

    [XmlElement("Auto")]
    public List<Auto> Autot { get; set; }

    }

    [Serializable()]
    public class Auto
    {
        [XmlElement("merkki")]
        public string Merkki{get;set;}
        [XmlElement("aid")]
        public string Aid { get; set; }
        [XmlElement("rekkari")]
        public string Rekkari { get; set; }
        [XmlElement("malli")]
        public string Malli { get; set; }
        [XmlElement("vm")]
        public int Vm { get; set; }
        [XmlElement("myyntiHinta")]
        public int MyyntiHinta { get; set; }
        [XmlElement("sisaanOstoHinta")]
        public int SOstoHinta { get; set; }

        public Auto()
        {
        }
    } 

    #endregion
}