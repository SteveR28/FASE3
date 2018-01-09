using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EnviarMensaje : System.Web.UI.Page
{

    webservicio.Webservice2Client conec = new webservicio.Webservice2Client();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button12_Click(object sender, EventArgs e)
    {
        string men = mensaje.Text;
        string des = destinatario.Text;
        string rem = remitente.Text;

        conec.EnviarMensaje(men, des, rem);

        mensaje.Text = "";
        destinatario.Text = "";
        remitente.Text = "";
    }
}