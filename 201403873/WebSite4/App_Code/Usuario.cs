using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de Usuario
/// </summary>
public class Usuario
{
  public string nickname;
    public string nombre;
    public string correo;
    public string fecha_nac;
    public string contra;

    public Usuario()
    {
        nickname = "";
        nombre = "";
        correo = "";
        fecha_nac = "";
        contra = "";
    }

    public Usuario(string ni, string no, string co, string fe, string cn )
    {
        nickname = ni;
        nombre = no;
        correo = co;
        fecha_nac = fe;
        contra = cn;
    }
}