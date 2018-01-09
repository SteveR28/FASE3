using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TareaIndividual : System.Web.UI.Page
{

    webservicio.Webservice2Client conec = new webservicio.Webservice2Client();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        string aa = coditarea.Text;
        string bb = nombret.Text;
        string cc = descrip.Text;
        string dd = fechaitarea.Text;
        string ss = requisitos.Text;
        int ww = Convert.ToInt32(pagot.Text);
        string mm = nicktarea.Text;
        conec.CrearTareaIndividual(aa, bb, cc, dd, ss, ww, mm);

        coditarea.Text = "";
        nombret.Text = "";
        descrip.Text = "";
        fechaitarea.Text = "";
        requisitos.Text = "";
        pagot.Text = "";
        nicktarea.Text = "";
    }

    

    protected void Button5_Click1(object sender, EventArgs e)
    {
        string a2 = nt.Text;
        string b2 = nc.Text;
        
        
        conec.DetalleTareaIndividual(a2, b2);

        nt.Text = "";
        nc.Text = "";
        
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        string[] Lista;
        Lista = conec.Verpartarea("", t12.Text);

        TableCell c1 = new TableCell();
        c1.Text = "Nombre";
        



        TableRow fila = new TableRow();
        fila.Controls.Add(c1);
        

        Table1.Controls.Add(fila);

        for (int i = 0; i < Lista.Length; i = i + 1)
        {


            TableCell casilla1 = new TableCell();
            casilla1.Text = Lista[i];
            


            TableRow fila1 = new TableRow();
            fila1.Controls.Add(casilla1);
            
            Table1.Controls.Add(fila1);
        }
    }
}