using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AgregarUsuario : System.Web.UI.Page
{

    webservicio.Webservice2Client conec = new webservicio.Webservice2Client();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string a = nickname.Text;
        string b = nombre.Text;
        string c = correo.Text;
        string d = fechanac.Text;
        string f = contra.Text;
        conec.CrearUsuario(a, b, c, d, f);

        
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
       // response,redirect("login.aspx");
    }
}