using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Asociaciones : System.Web.UI.Page
{
    webservicio.Webservice2Client conec = new webservicio.Webservice2Client();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button10_Click(object sender, EventArgs e)
    {
        string asoa = codaso.Text;
        string asob = nombreaso.Text;
        string asoc = resumenaso.Text;
        string asod = logo.Text;
        string naso = nickname_asociacion.Text;

        conec.CrearAsociacion(asoa, asob, asoc, asod, naso);

        codaso.Text = "";
        nombreaso.Text = "";
        resumenaso.Text = "";
        logo.Text = "";
        nickname_asociacion.Text = "";
    }

    protected void Button11_Click(object sender, EventArgs e)
    {
        Response.Redirect("VisualizarAsociacion.aspx");
    }
}