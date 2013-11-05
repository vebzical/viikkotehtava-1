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

    public static List<Auto> SortList(List<Auto> autoLista, string GridViewSortExpression, string SortDirection)
    {
        if (autoLista != null)
        {
            if (GridViewSortExpression != string.Empty)
            {
                if (SortDirection == "ASC")
                {
                    autoLista = autoLista.OrderBy
                        (a => a.GetType().GetProperty(GridViewSortExpression)
                            .GetValue(a, null)).ToList();
                }
                else
                {
                    autoLista = autoLista.OrderByDescending
                        (a => a.GetType().GetProperty(GridViewSortExpression)
                            .GetValue(a, null)).ToList();
                }
            }
            return autoLista;
        }
        else
        {
            return autoLista;
        }
    }
}