using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Participar : System.Web.UI.Page
{

    webservicio.Webservice2Client conec = new webservicio.Webservice2Client();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        int men = Convert.ToInt32(pco.Text);
        string des = pi.Text;
        string rem = pc.Text;

        conec.DetalleProyecto(men, des, rem);

        pco.Text = "";
        pi.Text = "";
        pc.Text = "";
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        string men1 = tc.Text;
        string des1 = tl.Text;
        string rem1 = tct.Text;

        conec.DetalleTareaPro(men1, des1, rem1);

        pco.Text = "";
        pi.Text = "";
        pc.Text = "";
    }
}