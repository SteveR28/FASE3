using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class VisualizarAsociacion : System.Web.UI.Page
{
    webservicio.Webservice2Client conec = new webservicio.Webservice2Client();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button10_Click(object sender, EventArgs e)
    {
        int a = Convert.ToInt32(noinvitacion.Text);
        string b = codaso.Text;
        string c = nickname.Text;
    

        conec.EnviarInvitacion(a, b, c);

        codaso.Text = "";
        noinvitacion.Text = "";
        nickname.Text = "";
    }

    protected void Button11_Click(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}