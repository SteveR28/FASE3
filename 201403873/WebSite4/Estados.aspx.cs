using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Estados : System.Web.UI.Page
{
    webservicio.Webservice2Client conec = new webservicio.Webservice2Client();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        string dees = descripcion.Text;
        string nick = nicknamecoment.Text;

        conec.IngresarEstado(dees, nick);



        des.Text = descripcion.Text;
        n2.Text = nicknamecoment.Text;


        descripcion.Text = "";
        nicknamecoment.Text = "";
    }

    protected void Button13_Click(object sender, EventArgs e)
    {
        string coment = comentario.Text;
        int noestado = Convert.ToInt32(no_estado.Text);

        conec.IngresarComentario(coment, noestado);

        labelcomentario.Text = comentario.Text;
        labelnoestado.Text = no_estado.Text;


        comentario.Text = "";
        no_estado.Text = "";
    }
}