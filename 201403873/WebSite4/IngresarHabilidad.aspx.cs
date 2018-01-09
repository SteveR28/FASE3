using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class IngresarHabilidad : System.Web.UI.Page
{

    webservicio.Webservice2Client conec = new webservicio.Webservice2Client();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button8_Click(object sender, EventArgs e)
    {
        string aaaa = codhab.Text;
        string bbbb = nombrehab.Text;
        string cccc = resumen.Text;

        string ssss = karma.Text;
        conec.IngresarHabilidad(aaaa, bbbb, cccc, ssss);

        codhab.Text = "";
        nombrehab.Text = "";
        resumen.Text = "";
        karma.Text = "";
    }

    protected void Button10_Click(object sender, EventArgs e)
    {
        string aa = codcono.Text;
        string bb = nomcono.Text;
        string cc = descono.Text;

        string ss = codhabi.Text;
        conec.IngresarConocimiento(aa, bb, cc, ss);


        codcono.Text = "";
        nomcono.Text = "";
        descono.Text = "";
        codhabi.Text = "";
    }

    protected void Button9_Click(object sender, EventArgs e)
    {

    }

    protected void Button11_Click(object sender, EventArgs e)
    {
        string[] Lista;
        Lista = conec.VerHabilidad("", h1.Text);

        TableCell c1 = new TableCell();
        c1.Text = "Codigo";
        TableCell c2 = new TableCell();
        c2.Text = "Nombre";
        TableCell c3 = new TableCell();
        c3.Text = "Resumen";
        TableCell c4 = new TableCell();
        c4.Text = "Karma";



        TableRow fila = new TableRow();
        fila.Controls.Add(c1);
        fila.Controls.Add(c2);
        fila.Controls.Add(c3);
        fila.Controls.Add(c4);

        Table1.Controls.Add(fila);

        for (int i = 0; i < Lista.Length; i = i + 4)
        {


            TableCell casilla1 = new TableCell();
            casilla1.Text = Lista[i];
            TableCell casilla2 = new TableCell();
            casilla2.Text = Lista[i + 1];
            TableCell casilla3 = new TableCell();
            casilla3.Text = Lista[i + 2];
            TableCell casilla4 = new TableCell();
            casilla4.Text = Lista[i + 3];


            TableRow fila1 = new TableRow();
            fila1.Controls.Add(casilla1);
            fila1.Controls.Add(casilla2);
            fila1.Controls.Add(casilla3);
            fila1.Controls.Add(casilla4);
            Table1.Controls.Add(fila1);
        }
    }

    protected void Button12_Click(object sender, EventArgs e)
    {

        string[] Lista2;
        Lista2 = conec.VerConocimiento("", h2.Text);

        TableCell c1 = new TableCell();
        c1.Text = "Codigo";
        TableCell c2 = new TableCell();
        c2.Text = "Nombre";
        TableCell c3 = new TableCell();
        c3.Text = "Descripcion";




        TableRow fila = new TableRow();
        fila.Controls.Add(c1);
        fila.Controls.Add(c2);
        fila.Controls.Add(c3);


        Table2.Controls.Add(fila);

        for (int i = 0; i < Lista2.Length; i = i + 4)
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

    protected void Button13_Click(object sender, EventArgs e)
    {
        string[] Lista2;
        Lista2 = conec.VerConocimiento("", h2.Text);

        TableCell c1 = new TableCell();
        c1.Text = "Codigo";
        TableCell c2 = new TableCell();
        c2.Text = "Nombre";
        TableCell c3 = new TableCell();
        c3.Text = "Descripcion";




        TableRow fila = new TableRow();
        fila.Controls.Add(c1);
        fila.Controls.Add(c2);
        fila.Controls.Add(c3);


        Table2.Controls.Add(fila);

        for (int i = 0; i < Lista2.Length; i = i + 4)
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

    protected void Button14_Click(object sender, EventArgs e)
    {
        int s2 = conec.SeleccionarKarma("", t10.Text);


        lkarma.Text = Convert.ToString(s2);


    }
    protected void Button15_Click(object sender, EventArgs e)
    {
        string s = s1.Text;
        string d = d1.Text;



        conec.AgregarConocimiento(s, d);


        s1.Text = "";
        d1.Text = "";
    }
}