using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml.Serialization;

/// <summary>
/// Summary description for QuestionLista
/// </summary>

[Serializable()]
[XmlRoot("QuestionLista")]
public class QuestionLista
{
    [XmlElement("Question")]
    public List<Question> kysymykset { get; set; }

	public QuestionLista()
	{
        kysymykset = new List<Question>();
	}
}