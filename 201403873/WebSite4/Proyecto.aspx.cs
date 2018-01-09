using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Proyecto : System.Web.UI.Page
{
    webservicio.Webservice2Client conec = new webservicio.Webservice2Client();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button7_Click(object sender, EventArgs e)
    {

    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        string aaa = codtp.Text;
        string bbb = nombretp.Text;
        string ccc = destp.Text;
        string ddd = fecitp.Text;
        string sss = requitp.Text;
        int www = Convert.ToInt32(pagotp.Text);
        string cotp = codprotp.Text;
        conec.CrearTareaProyecto(aaa, bbb, ccc, ddd, sss, www, cotp);
    }



    protected void Button9_Click(object sender, EventArgs e)
    {
        string[] Lista2;
        Lista2 = conec.HistorialProyectosTareas("", coditarea.Text);

        TableCell c1 = new TableCell();
        c1.Text = "Codigo Tarea/Proyecto";
        TableCell c2 = new TableCell();
        c2.Text = "Nombre";
        TableCell c3 = new TableCell();
        c2.Text = "Requisitos";



        TableRow fila = new TableRow();
        fila.Controls.Add(c1);
        fila.Controls.Add(c2);
        fila.Controls.Add(c3);

        Table2.Controls.Add(fila);

        for (int i = 0; i < Lista2.Length; i = i + 3)
        {


            TableCell casilla1 = new TableCell();
            casilla1.Text = Lista2[i];
            TableCell casilla2 = new TableCell();
            casilla2.Text = Lista2[i + 1];
            TableCell casilla3 = new TableCell();
            casilla3.Text = Lista2[i + 2];


            TableRow fila1 = new TableRow();
            fila1.Controls.Add(casilla1);
            fila1.Controls.Add(casilla2);
            fila1.Controls.Add(casilla3);
            Table2.Controls.Add(fila1);


        }
    }

    protected void Button10_Click(object sender, EventArgs e)
    {
        string[] Lista;
        Lista = conec.HistorialProyectos("", nickproyecto.Text);

        TableCell c1 = new TableCell();
        c1.Text = "Codigo";
        TableCell c2 = new TableCell();
        c2.Text = "Nombre";



        TableRow fila = new TableRow();
        fila.Controls.Add(c1);
        fila.Controls.Add(c2);

        Table1.Controls.Add(fila);

        for (int i = 0; i < Lista.Length; i = i + 2)
        {


            TableCell casilla1 = new TableCell();
            casilla1.Text = Lista[i];
            TableCell casilla2 = new TableCell();
            casilla2.Text = Lista[i + 1];


            TableRow fila1 = new TableRow();
            fila1.Controls.Add(casilla1);
            fila1.Controls.Add(casilla2);
            Table1.Controls.Add(fila1);
        }
    }

    protected void Button11_Click(object sender, EventArgs e)
    {
        Response.Redirect("Participar.aspx");
    }
}