using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Timeline : System.Web.UI.Page
{

    webservicio.Webservice2Client conec = new webservicio.Webservice2Client();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string[] Lista;
        Lista = conec.HistorialProyectos("", TextBox1.Text);

        TableCell c1 = new TableCell();
        c1.Text = "No estado";
        TableCell c2 = new TableCell();
        c2.Text = "Descripcion";



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
}