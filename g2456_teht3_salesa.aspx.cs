using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

public partial class g2456_teht3_salesa : System.Web.UI.Page
{
    string Path;

    protected void Page_Load(object sender, EventArgs e)
    {
        Path = @"D:\g2456\viikkotehtava-1\App_Data\Elokuvat.xml";

        try
        {
            XmlDocument dom = new XmlDocument();
            dom.Load(Path);

            TreeView1.Nodes.Clear();
            TreeView1.Nodes.Add(new TreeNode(dom.DocumentElement.Name));
            TreeNode tNode = new TreeNode();
            tNode = TreeView1.Nodes[0];

            AddNode(dom.DocumentElement, tNode);
            TreeView1.ExpandAll();
        }
        catch (Exception ex)
        {
            throw;
        }
    }

    private void AddNode(XmlNode inXmlNode, TreeNode inTreeNode)
    {
        XmlNode xNode;
        TreeNode tNode;
        XmlNodeList nodelist;

        if (inXmlNode.HasChildNodes)
        {
            nodelist = inXmlNode.ChildNodes;
            for (int i = 0; i <= nodelist.Count -1; i++)
            {
                xNode = inXmlNode.ChildNodes[i];
                inTreeNode.ChildNodes.Add(new TreeNode(xNode.Name));
                tNode = inTreeNode.ChildNodes[i];
                AddNode(xNode, tNode);
            }
        }
        else
        {
            inTreeNode.Text = (inXmlNode.OuterXml).Trim();
        }
    }
}