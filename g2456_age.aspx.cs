using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class g2456_age : System.Web.UI.Page
{
    string currentDate; 
    string selectedDate;

    DateTime tamaPaiva;
    DateTime valittuPaiva;
    TimeSpan paivienErotus;
    int paivina;

    protected void Page_Load(object sender, EventArgs e)
    {
        texti2.Text = "Valitse haluamasi päivä.";
        texti3.Text = null;
    }

    protected void tanaanOn(object sender, EventArgs e)
    {
        Calendar1.SelectedDate = DateTime.Today;
        Calendar1.VisibleDate = DateTime.Today;

        currentDate = DateTime.Today.GetDateTimeFormats('d')[0];
        texti.Text = "Tänään on: "+currentDate;
    }

    protected void paivaaVaihdettu(object sender, EventArgs e)
    {
        texti2.Text = null;
        texti3.Text = null;

        selectedDate = Calendar1.SelectedDate.GetDateTimeFormats('d')[0];
        texti2.Text = "Valitse haluamasi päivä "+selectedDate;

        valittuPaiva = Calendar1.SelectedDate;
        tamaPaiva = DateTime.Today;

        paivienErotus = tamaPaiva - valittuPaiva;
        paivina = paivienErotus.Days;

        texti3.Text = "Valitun päivän ja tämän päivän erotus: " + paivina.ToString();
    }

    protected void button1Painettu(object sender, EventArgs e) 
    {
        Calendar1.VisibleDate = Calendar1.VisibleDate.AddYears(-1);
    }

    protected void button2Painettu(object sender, EventArgs e)
    {
        Calendar1.VisibleDate = Calendar1.VisibleDate.AddYears(1);
    }
}