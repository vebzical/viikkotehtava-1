using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml.Serialization;

/// <summary>
/// Summary description for Question
/// </summary>

[Serializable()]
public class Question
{
    [XmlElement("question")]
    public string question;
    [XmlElement("answers")]
    public List<string> answers;
    [XmlElement("rightanswers")]
    public List<int> rightanswers;

	public Question()
	{
        answers = new List<string>();
        rightanswers = new List<int>();
	}
}