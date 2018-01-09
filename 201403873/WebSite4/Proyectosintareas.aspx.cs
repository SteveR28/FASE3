using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Proyectosintareas : System.Web.UI.Page
{

    webservicio.Webservice2Client conec = new webservicio.Webservice2Client();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string a = codigo.Text;
        string b = nombre.Text;
        string c = fechai.Text;
        string d = fechaf.Text;
        int s = Convert.ToInt32(pago.Text);
        string m = nickname.Text;
        conec.CrearProyecto(a, b, c, d, s, m);

        codigo.Text = "";
        nombre.Text = "";
        fechai.Text = "";
        fechaf.Text = "";
        pago.Text = "";
        nickname.Text = "";

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Proyecto.aspx");
    }
}