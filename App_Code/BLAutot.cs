using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;
using System.Xml;

/// <summary>
/// Summary description for BLAutot
/// </summary>
public class BLAutot
{
	public BLAutot()
	{

	}

    public static List<Auto> HaeAutot() 
    {
        AutoLista autot = new AutoLista();
        List<Auto> autoLista = new List<Auto>();

        Serialisointi.DeSerialisoiXml(HttpContext.Current.Server.MapPath("~/App_Data/WanhatAutot.xml"), ref autot);

        for (int i = 0; i < autot.Autot.Count; i++)
        {
            autoLista.Add(autot.Autot[i]);
        }

        return autoLista;
    }

    public static void VieAutot(AutoLista autot) 
    {
        Serialisointi.SerialisoiXml(HttpContext.Current.Server.MapPath("~/App_Data/WanhatAutot.xml"), autot);
    }

    public static List<Auto> sortList(List<Auto> autoLista, SortDirection sd, string se)
    {
        if (sd == SortDirection.Ascending)
        {
            return autoLista.AsQueryable<Auto>().OrderBy(Auto => se).ToList();
        }
        else
        {
            return autoLista.AsQueryable<Auto>().OrderByDescending(Auto => se).ToList();
        }
    }
}