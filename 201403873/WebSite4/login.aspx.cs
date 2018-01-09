using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    webservicio.Webservice2Client conec = new webservicio.Webservice2Client();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string nick = nickname.Text;
        string con = contra.Text;


        bool aa = conec.Login(nick, con);



        if (aa == true)
        {
            Session["Nickname"] = nickname.Text;
            
            Response.Redirect("PaginaUsuario.aspx");

        }
        else
        {
            Response.Redirect("AgregarUsuario.aspx");
        }
        


    }
}