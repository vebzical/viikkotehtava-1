using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml.Serialization;

/// <summary>
/// Summary description for AutoLista 
/// </summary>

[Serializable()]
[XmlRoot("Wanhatautot")]
public class AutoLista
{
    [XmlElement("Auto")]
        public List<Auto> Autot { get; set; }

	public AutoLista()
	{
        Autot = new List<Auto>();
	}
}