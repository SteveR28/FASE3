using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PaginaUsuario : System.Web.UI.Page
{
    webservicio.Webservice2Client conec = new webservicio.Webservice2Client();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
        string a = codigo.Text; 
        string b = nombre.Text;
        string c = fechai.Text;
        string d = fechaf.Text;
        int s = Convert.ToInt32(pago.Text);
        string m = nickname.Text;
        conec.CrearProyecto(a, b, c, d, s, m);
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        codi.Text = codigo.Text;
        nom.Text = nombre.Text;
        fechi.Text = fechai.Text;
        fechf.Text = fechaf.Text;
        pag.Text = pago.Text;
        nick.Text = nickname.Text;

        codigo.Text = "";
        nombre.Text = "";
        fechai.Text = "";
        fechaf.Text = "";
        pago.Text = "";
        nickname.Text = "";
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
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        codta.Text = coditarea.Text;
        nomt.Text = nombret.Text;
        dest.Text = descrip.Text;
        itarea.Text = fechaitarea.Text;
        requi.Text = requisitos.Text;
        pagt.Text = pagot.Text;
        nickt.Text = nicktarea.Text;

        coditarea.Text = "";
        nombret.Text = "";
        descrip.Text = "";
        fechaitarea.Text = "";
        requisitos.Text = "";
        pagot.Text = "";
        nicktarea.Text = "";
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

    protected void Button7_Click(object sender, EventArgs e)
    {
        ctp.Text = codtp.Text;
        ntp.Text = nombretp.Text;
        dtp.Text = destp.Text;
        itp.Text = fecitp.Text;
        rtp.Text = requitp.Text;
        ptp.Text = pagotp.Text;
        cptp.Text = codprotp.Text;

        codtp.Text = "";
        nombretp.Text = "";
        destp.Text = "";
        fecitp.Text = "";
        requitp.Text = "";
        pagotp.Text = "";
        codprotp.Text = "";
    }

    protected void Button8_Click(object sender, EventArgs e)
    {
        string aaaa = codhab.Text;
        string bbbb = nombrehab.Text;
        string cccc = resumen.Text;
        
        string ssss = karma.Text;
        conec.IngresarHabilidad(aaaa, bbbb, cccc, ssss);
    }

    protected void Button9_Click(object sender, EventArgs e)
    {
        ch.Text = codhab.Text;
        nh.Text = nombrehab.Text;
        rh.Text = resumen.Text;
        
        kah.Text = karma.Text;

        codhab.Text = "";
        nombrehab.Text = "";
        resumen.Text = "";
        
        karma.Text = "";
    }

    protected void Button10_Click(object sender, EventArgs e)
    {
        string asoa = codaso.Text;
        string asob = nombreaso.Text;
        string asoc = resumenaso.Text;
        string asod = logo.Text;
        string naso = nickname_asociacion.Text;

        conec.CrearAsociacion(asoa, asob, asoc, asod, naso);
    }

    protected void Button11_Click(object sender, EventArgs e)
    {
        ca.Text = codaso.Text;
        naso.Text = nombreaso.Text;
        raso.Text = resumenaso.Text;
        log.Text = logo.Text;
        nick_aso.Text = nickname_asociacion.Text;


        codaso.Text = "";
        nombreaso.Text = "";
        resumenaso.Text = "";
        logo.Text = "";
        nickname_asociacion.Text = "";

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

    protected void Button14_Click(object sender, EventArgs e)
    {
        TextBox1.Text = Session["Nickname"].ToString();
    }
}