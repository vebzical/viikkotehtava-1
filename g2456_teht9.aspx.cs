using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class g2456_teht9 : System.Web.UI.Page
{
    private int editmode;
    private bool showresults;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            myIni();
        }
        else
        {
            editmode = (int)ViewState["editmode"];

            if (Session["UserAuthentication"] == null)
            {
                answerview.Visible = true;
                populatePanel();
            }
            else
            {
                answerview.Visible = false;
                if (showresults)
                {
                    
                }
            }

            if (editmode == 1)
            {
                editmodecontrols.Visible = true;
                CheckBox1.Visible = true;

                if (int.Parse(cmbNumberofAnswers.SelectedValue) > 2)
                {
                    CheckBox1.Visible = false;
                    generateQuestion(int.Parse(cmbNumberofAnswers.SelectedValue));
                }
            }
            else
            {
                CheckBox1.Visible = false;
                editmodecontrols.Visible = false;
            }
        }
    }

    public void myIni() 
    {
        showresults = false;

        editmode = 0;
        ViewState["editmode"] = editmode;

        if (Session["UserAuthentication"] == null)
        {
            answerview.Visible = true;
            populatePanel();
        }
        else
        {
            answerview.Visible = false;
        }
        
    }

    public void generateQuestion(int number) 
    {
        pane.Controls.Add(new LiteralControl("<br />"));
        for (int i = 0; i < number; i++)
        {
            TextBox asd = new TextBox();
            CheckBox asd1 = new CheckBox();
            asd.ID = "txt" + i.ToString();
            asd1.ID = "chk" + i.ToString();

            pane.Controls.Add(asd);
            pane.Controls.Add(asd1);

            pane.Controls.Add(new LiteralControl("<br />"));
        }
    }
    protected void btnEditmode_Click(object sender, EventArgs e)
    {
        var response = base.Response;

        if (editmode == 0)
        {
            editmode = 1;
            ViewState["editmode"] = editmode;
        }
        else 
        {
            editmode = 0;
            ViewState["editmode"] = editmode;
        }

        Page_Load(sender, e);
    }
    protected void btnAddQuestion_Click(object sender, EventArgs e)
    {
        List<string> answers = new List<string>();
        List<int> rightanswers = new List<int>();
        QuestionLista q = new QuestionLista();
        int j = 0;

        if (int.Parse(cmbNumberofAnswers.SelectedValue) > 2)
        {
            foreach (Control item in pane.Controls)
            {
                if (item is TextBox)
                {
                    TextBox txtInstance = (TextBox)item;
                    answers.Add(txtInstance.Text);
                }
                if (item is CheckBox)
                {
                    CheckBox chkInstance = (CheckBox)item;
                    if (chkInstance.Checked)
                    {
                        rightanswers.Add(j);
                    }
                    j++;
                }
            }

            Question o = new Question();
            o.question = txtQuetion.Text;
            o.answers = answers;
            o.rightanswers = rightanswers;
            q.kysymykset.Add(o);
        }
        else
        {
            answers.Add("Kyllä");
            answers.Add("Ei");

            if (CheckBox1.Checked)
            {
                rightanswers.Add(0);
            }
            else
            {
                rightanswers.Add(1);
            }

            Question o = new Question();
            o.question = txtQuetion.Text;
            o.answers = answers;
            o.rightanswers = rightanswers;
            q.kysymykset.Add(o);
        }

        Serialisointi.SerialisoiXmlKysymykset(HttpContext.Current.Server.MapPath("~/App_Data/SavedQuestions.xml"), q);
        lblInfo.Text = "Kysymys lisätty!";
    }
    protected void populatePanel()
    {
        QuestionLista q = new QuestionLista();

        Serialisointi.DeSerialisoiKysymyksetXml(HttpContext.Current.Server.MapPath("~/App_Data/SavedQuestions.xml"), ref q);

        btnVastaa.Visible = true;

        if (q.kysymykset.Count > 0)
        {
            foreach (Question item in q.kysymykset)
            {
                TextBox kysymys = new TextBox();
                kysymys.Text = item.question;
                kysymys.Enabled = false;

                studentPane.Controls.Add(kysymys);
                studentPane.Controls.Add(new LiteralControl("<br />"));

                foreach (string item1 in item.answers)
                {
                    Label ehto = new Label();
                    CheckBox vastaus = new CheckBox();
                    ehto.Text = item1;

                    studentPane.Controls.Add(ehto);
                    studentPane.Controls.Add(vastaus);
                    studentPane.Controls.Add(new LiteralControl("<br />"));
                }
            }
        }
    }
    protected void btnVastaa_Click(object sender, EventArgs e)
    {
        btnVastaa.Visible = false;
        answerview.Visible = false;
        lblInfo.Text = "Kiitos vastauksistasi!";

        AnswerList a = new AnswerList();
        Answer b = new Answer();
        List<string> answers = new List<string>();
        List<int> selected = new List<int>();
        string question = "";
        int j = 0;
        int i = 0;

        foreach (Control item in studentPane.Controls)
        {
            if (item is TextBox)
            {
                if (i > 0)
                {
                    b.question = question;
                    b.answers = answers;
                    b.selected = selected;
                    a.vastaukset.Add(b);

                    b = new Answer();
                }

                TextBox txtInstance = (TextBox)item;
                question = txtInstance.Text;

                i++;
            }
            if (item is CheckBox)
            {
                CheckBox chkInstance = (CheckBox)item;
                if (chkInstance.Checked)
                {
                    selected.Add(j);
                }
                j++;
            }
            if (item is Label)
            {
                Label lblInstance = (Label)item;
                answers.Add(lblInstance.Text);
            }
        }

        b.question = question;
        b.answers = answers;
        b.selected = selected;
        a.vastaukset.Add(b);

        Serialisointi.SerialisoiXmlVastaukset(HttpContext.Current.Server.MapPath("~/App_Data/SavesAnswers.xml"), a);
    }
    protected void btnStartGallup_Click(object sender, EventArgs e)
    {
        Timer1.Interval = int.Parse(DropDownTime.SelectedValue) * 1000;
        Timer1.Enabled = true;
    }
    protected void endSurvey(object sender, EventArgs e) 
    {
        QuestionLista a = new QuestionLista();
        Timer1.Enabled = false;
        Serialisointi.SerialisoiXmlKysymykset(HttpContext.Current.Server.MapPath("~/App_Data/SavedQuestions.xml"), a);
        showresults = true;
    }
}