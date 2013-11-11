using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml.Serialization;

[Serializable()]
[XmlRoot("Users")]
public class Users
{
    [XmlElement("User")]
    public List<User> kayttajat { get; set; }

	public Users()
	{
        kayttajat = new List<User>();
	}
}