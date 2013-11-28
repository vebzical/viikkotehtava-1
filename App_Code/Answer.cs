using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml.Serialization;

/// <summary>
/// Summary description for Answer
/// </summary>
[Serializable()]
public class Answer
{
    [XmlElement("question")]
    public string question;
    [XmlElement("answers")]
    public List<string> answers;
    [XmlElement("selected")]
    public List<int> selected;

	public Answer()
	{
        answers = new List<string>();
        selected = new List<int>();
	}
}