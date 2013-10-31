using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml.Serialization;

/// <summary>
/// Summary description for Auto
/// </summary>
/// 
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