using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Reporte : System.Web.UI.Page
{
    public List<Usuario> ListaU = new List<Usuario>();

    webservicio.Webservice2Client conec = new webservicio.Webservice2Client();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string[] Lista;
        Lista = conec.HistorialUsuario("");

        TableCell c1 = new TableCell();
        c1.Text = "Nickname";
        TableCell c2 = new TableCell();
        c2.Text = "Nombre";
        TableCell c3 = new TableCell();
        c3.Text = "Correo";
        TableCell c4 = new TableCell();
        c4.Text = "Fecha Nacimiento";
        TableCell c5 = new TableCell();
        c5.Text = "Contrasena";


        TableRow fila = new TableRow();
        fila.Controls.Add(c1);
        fila.Controls.Add(c2);
        fila.Controls.Add(c3);
        fila.Controls.Add(c4);
        fila.Controls.Add(c5);
        Table1.Controls.Add(fila);

        for (int i = 0; i < Lista.Length; i = i + 5)
        {
            Usuario nuevo = new Usuario(Lista[i], Lista[i + 1], Lista[i + 2], Lista[i + 3], Lista[i + 4]);

            TableCell casilla1 = new TableCell();
            casilla1.Text = Lista[i];
            TableCell casilla2 = new TableCell();
            casilla2.Text = Lista[i + 1];
            TableCell casilla3 = new TableCell();
            casilla3.Text = Lista[i + 2];
            TableCell casilla4 = new TableCell();
            casilla4.Text = Lista[i + 3];
            TableCell casilla5 = new TableCell();
            casilla5.Text = Lista[i + 4];

            TableRow fila1 = new TableRow();
            fila1.Controls.Add(casilla1);
            fila1.Controls.Add(casilla2);
            fila1.Controls.Add(casilla3);
            fila1.Controls.Add(casilla4);
            fila1.Controls.Add(casilla5);
            Table1.Controls.Add(fila1);


            ListaU.Add(nuevo);


        }
        string c = "";

        c = "\"usuario\": [";
        for (int i = 0; i < ListaU.Count; i = i + 1)
        {

            if (i == ListaU.Count - 1)
            {
                c = c + "{\n\"Nickname\":\"" + ListaU[i].nickname + "\","+ Environment.NewLine;
                c = c + "\"Nombre\":\"" + ListaU[i].nombre + "\"," + Environment.NewLine;
                c = c + "\"Correo\":\"" + ListaU[i].correo + "\"," + Environment.NewLine;
                c = c + "\"Fecha Nacimiento\":\"" + ListaU[i].fecha_nac + "\"," + Environment.NewLine;
                c = c + "\"Contrasena\":\"" + ListaU[i].contra + "\"" + Environment.NewLine;
            }
            else
            {
                c = c + "{\n\"Nickname\":\"" + ListaU[i].nickname + "\"," + Environment.NewLine;
                c = c + "\"Nombre\":\"" + ListaU[i].nombre + "\"," + Environment.NewLine;
                c = c + "\"Correo\":\"" + ListaU[i].correo + "\"," + Environment.NewLine;
                c = c + "\"Fecha Nacimiento\":\"" + ListaU[i].fecha_nac + "\"," + Environment.NewLine;
                c = c + "\"Contrasena\":\"" + ListaU[i].contra + "\"," + Environment.NewLine;
            }
        }
        c = c + "]";

        if (System.IO.File.Exists("C:\\Users\\USER\\Desktop\\Test1.txt"))
        {

        

            try
            {

                System.IO.File.Delete("C:\\Users\\USER\\Desktop\\Test1.txt");
               

            }

            catch (System.IO.IOException ex) { }


        }


        try
        {

            StreamWriter sw = new StreamWriter("C:\\Users\\USER\\Desktop\\Test1.txt", true, Encoding.ASCII);




            sw.Write(c);



            sw.Close();
        }
        catch (Exception ex)
        {
            Console.WriteLine("Exception: " + ex.Message);
        }




        usuarioR.Text = c;
        

    }
}