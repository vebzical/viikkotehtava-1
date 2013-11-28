using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml.Serialization;

/// <summary>
/// Summary description for AnswerList
/// </summary>
[Serializable()]
[XmlRoot("AnswerList")]
public class AnswerList
{
    [XmlElement("Answer")]
    public List<Answer> vastaukset { get; set; }

	public AnswerList()
	{
        vastaukset = new List<Answer>();
	}
}