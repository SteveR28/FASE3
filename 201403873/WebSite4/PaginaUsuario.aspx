<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PaginaUsuario.aspx.cs" Inherits="PaginaUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        PAGINA DE USUARIO<br />
        <br />
        <br />
        
        <br />


        <table>
            <tr><td>INGRESA DATOS</td>
                <td>PROYECTO</td>
            </tr>
        <tr>
            <td class="auto-style2">

                Codigo</td>
            <td class="auto-style1">

                <asp:TextBox ID="codigo" runat="server"></asp:TextBox>
            </td>
            <td></td><td>
            <asp:Label ID="codi" runat="server"></asp:Label>
            </td>
            </tr>
        <tr>
            <td class="auto-style2">

                Nombre</td>
            <td class="auto-style1">

                <asp:TextBox ID="nombre" runat="server"></asp:TextBox>
            </td>
            <td></td><td>
            <asp:Label ID="nom" runat="server"></asp:Label>
            </td>
            </tr>
             <tr>
            <td class="auto-style2">

                Fecha inicio</td>
            <td class="auto-style1">

                <asp:TextBox ID="fechai" runat="server"></asp:TextBox>
                 </td>
                 <td></td><td>
                 <asp:Label ID="fechi" runat="server"></asp:Label>
                 </td>
            </tr>
             <tr>
            <td class="auto-style2">

                Fecha final</td>
            <td class="auto-style1">

                <asp:TextBox ID="fechaf" runat="server"></asp:TextBox>
                 </td>
                 <td></td><td>
                 <asp:Label ID="fechf" runat="server"></asp:Label>
                 </td>
            </tr>
             <tr>
            <td class="auto-style2">

                Pago</td>
            <td class="auto-style1">

                <asp:TextBox ID="pago" runat="server"></asp:TextBox>
                 </td>
                 <td></td><td>
                 <asp:Label ID="pag" runat="server"></asp:Label>
                 </td>
            </tr>
             <tr>
            <td class="auto-style2">

                Nickname</td>
            <td class="auto-style1">

                <asp:TextBox ID="nickname" runat="server"></asp:TextBox>
                 </td>
                 <td></td><td>
                 <asp:Label ID="nick" runat="server"></asp:Label>
                 </td>
            </tr>
            <tr><td>
                <asp:Button ID="Button1" runat="server" Text="Ingresar Proyecto" OnClick="Button1_Click" />
                </td>

                <td>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style1" Text="Publicar" OnClick="Button2_Click" />
                </td>
            </tr>
            

            </table>

        <asp:Button ID="Button14" runat="server" OnClick="Button14_Click" Text="Button" />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

        <br />
        <br />
        <br />
    
    </div>

        <table>
            <tr><td>INGRESA DATOS</td>
                <td>ESTADO</td>
            </tr>
            <tr><td>&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr><td>Descripcion</td>
                <td>
                    <asp:TextBox ID="descripcion" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="des" runat="server"></asp:Label>
                </td>
            </tr>
            <tr><td>Nickname</td>
                <td>
                    <asp:TextBox ID="nicknamecoment" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="n2" runat="server"></asp:Label>
                </td>
            </tr>
            <tr><<td>
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Publicar Estado" />
                </td><td></td>/tr>
        </table>


        <br />
        <br />
        <br />

        <table>
            <tr><td>COMENTAR</td><td>ESTADO</td></tr>
            <tr><td>Comentario</td><td>
                <asp:TextBox ID="comentario" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="labelcomentario" runat="server"></asp:Label>
                </td>
            </tr>
            <tr><td>No Estado</td><td>
                <asp:TextBox ID="no_estado" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="labelnoestado" runat="server"></asp:Label>
                </td>
            </tr>
            

            <tr><td>
                <asp:Button ID="Button13" runat="server" OnClick="Button13_Click" Text="Comentar" />
                </td>
                
            </tr>



        </table>

        <br />
        <br />
        <br />

        <table>
            <tr><td>INGRESA DATOS</td>
                <td>TAREA</td>
            </tr>
        <tr>
            <td class="auto-style2">

                Codigo</td>
            <td class="auto-style1">

                <asp:TextBox ID="coditarea" runat="server"></asp:TextBox>
            </td>
            <td></td><td>
            <asp:Label ID="codta" runat="server"></asp:Label>
            </td>
            </tr>
        <tr>
            <td class="auto-style2">

                Nombre</td>
            <td class="auto-style1">

                <asp:TextBox ID="nombret" runat="server"></asp:TextBox>
            </td>
            <td></td><td>
            <asp:Label ID="nomt" runat="server"></asp:Label>
            </td>
            </tr>
             <tr>
            <td class="auto-style2">

                Descripcion</td>
            <td class="auto-style1">

                <asp:TextBox ID="descrip" runat="server"></asp:TextBox>
                 </td>
                 <td></td><td>
                 <asp:Label ID="dest" runat="server"></asp:Label>
                 </td>
            </tr>
             <tr>
            <td class="auto-style2">

                Fecha inicio</td>
            <td class="auto-style1">

                <asp:TextBox ID="fechaitarea" runat="server"></asp:TextBox>
                 </td>
                 <td></td><td>
                 <asp:Label ID="itarea" runat="server"></asp:Label>
                 </td>
            </tr>
             <tr>
            <td class="auto-style2">

                Requisitos</td>
            <td class="auto-style1">

                <asp:TextBox ID="requisitos" runat="server"></asp:TextBox>
                 </td>
                 <td></td><td>
                 <asp:Label ID="requi" runat="server"></asp:Label>
                 </td>
            </tr>
            <tr>
            <td class="auto-style2">

                Pago</td>
            <td class="auto-style1">

                <asp:TextBox ID="pagot" runat="server"></asp:TextBox>
                 </td>
                 <td></td><td>
                 <asp:Label ID="pagt" runat="server"></asp:Label>
                 </td>
            </tr>
             <tr>
            <td class="auto-style2">

                Nickname</td>
            <td class="auto-style1">

                <asp:TextBox ID="nicktarea" runat="server"></asp:TextBox>
                 </td>
                 <td></td><td>
                 <asp:Label ID="nickt" runat="server"></asp:Label>
                 </td>
            </tr>
            <tr><td>
                <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Ingresar Tarea" />
                </td>

                <td>
                    <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Publicar Tarea" />
                </td>
            </tr>
            

            </table>

        <br />
        <br />
        <br />

        <table>
            <tr><td>INGRESA TAREA</td>
                <td>DE PROYECTO</td>
            </tr>
        <tr>
            <td class="auto-style2">

                Codigo</td>
            <td class="auto-style1">

                <asp:TextBox ID="codtp" runat="server"></asp:TextBox>
            </td>
            <td></td><td>
            <asp:Label ID="ctp" runat="server"></asp:Label>
            </td>
            </tr>
        <tr>
            <td class="auto-style2">

                Nombre</td>
            <td class="auto-style1">

                <asp:TextBox ID="nombretp" runat="server"></asp:TextBox>
            </td>
            <td></td><td>
            <asp:Label ID="ntp" runat="server"></asp:Label>
            </td>
            </tr>
             <tr>
            <td class="auto-style2">

                Descripcion</td>
            <td class="auto-style1">

                <asp:TextBox ID="destp" runat="server"></asp:TextBox>
                 </td>
                 <td></td><td>
                 <asp:Label ID="dtp" runat="server"></asp:Label>
                 </td>
            </tr>
             <tr>
            <td class="auto-style2">

                Fecha inicio</td>
            <td class="auto-style1">

                <asp:TextBox ID="fecitp" runat="server"></asp:TextBox>
                 </td>
                 <td></td><td>
                 <asp:Label ID="itp" runat="server"></asp:Label>
                 </td>
            </tr>
             <tr>
            <td class="auto-style2">

                Requisitos</td>
            <td class="auto-style1">

                <asp:TextBox ID="requitp" runat="server"></asp:TextBox>
                 </td>
                 <td></td><td>
                 <asp:Label ID="rtp" runat="server"></asp:Label>
                 </td>
            </tr>
            <tr>
            <td class="auto-style2">

                Pago</td>
            <td class="auto-style1">

                <asp:TextBox ID="pagotp" runat="server"></asp:TextBox>
                 </td>
                 <td></td><td>
                 <asp:Label ID="ptp" runat="server"></asp:Label>
                 </td>
            </tr>
             <tr>
            <td class="auto-style2">

                Codigo Proyecto</td>
            <td class="auto-style1">

                <asp:TextBox ID="codprotp" runat="server"></asp:TextBox>
                 </td>
                 <td></td><td>
                 <asp:Label ID="cptp" runat="server"></asp:Label>
                 </td>
            </tr>
            <tr><td>
                <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Ingresar Tarea/Proyecto" />
                </td>

                <td>
                    <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="Publicar T/P" />
                </td>
            </tr>
            

            </table>

        
        <br />
        <br />
        <br />

        <table>
            <tr><td></td><td>Habilidad</td><td>Conocimiento</td><td>Karma</td></tr>
            <tr><td>1</td><td>Programador</td><td>WEB</td><td>3</td></tr>
            <tr><td>2</td><td>Base de datos</td><td>MariaDB</td><td>5</td></tr>
            <tr><td>3</td><td>Paginas Internet</td><td>html</td><td>2</td></tr>
            <tr><td>4</td><td>Lenguajes de Programacion</td><td>java, c#, c++</td><td>10</td></tr>
        </table>

        
        <br />
        <br />
        <br />

        <table>
            <tr><td>INGRESA HABILIDADES</td>
                <td>Y CONOCIMIENTOS</td>
            </tr>
        <tr>
            <td class="auto-style2">

                Codigo Habilidad</td>
            <td class="auto-style1">

                <asp:TextBox ID="codhab" runat="server"></asp:TextBox>
            </td>
            <td></td><td>
            <asp:Label ID="ch" runat="server"></asp:Label>
            </td>
            </tr>
        <tr>
            <td class="auto-style2">

                Nombre</td>
            <td class="auto-style1">

                <asp:TextBox ID="nombrehab" runat="server"></asp:TextBox>
            </td>
            <td></td><td>
            <asp:Label ID="nh" runat="server"></asp:Label>
            </td>
            </tr>
             <tr>
            <td class="auto-style2">

                Resumen</td>
            <td class="auto-style1">

                <asp:TextBox ID="resumen" runat="server"></asp:TextBox>
                 </td>
                 <td></td><td>
                 <asp:Label ID="rh" runat="server"></asp:Label>
                 </td>
            </tr>
             
            <tr>
            <td class="auto-style2">

                &nbsp;</td>
            <td class="auto-style1">

                &nbsp;</td>
                 <td></td><td>
                 &nbsp;</td>
            </tr>
             <tr>
            <td class="auto-style2">

                Karma</td>
            <td class="auto-style1">

                <asp:TextBox ID="karma" runat="server"></asp:TextBox>
                 </td>
                 <td></td><td>
                 <asp:Label ID="kah" runat="server"></asp:Label>
                 </td>
            </tr>
            <tr><td>
                <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="Ingresar Habilidad" />
                </td>

                <td>
                    <asp:Button ID="Button9" runat="server" OnClick="Button9_Click" Text="Publicar Habilidad" />
                </td>
            </tr>
            

            </table>

        
        <br />
        <br />
        <br />

        <table>
            <tr><td>CREAR</td>
                <td>ASOCIACION</td>
            </tr>
        <tr>
            <td class="auto-style2">

                Codigo Asociacion</td>
            <td class="auto-style1">

                <asp:TextBox ID="codaso" runat="server"></asp:TextBox>
            </td>
            <td></td><td>
            <asp:Label ID="ca" runat="server"></asp:Label>
            </td>
            </tr>
        <tr>
            <td class="auto-style2">

                Nombre</td>
            <td class="auto-style1">

                <asp:TextBox ID="nombreaso" runat="server"></asp:TextBox>
            </td>
            <td></td><td>
            <asp:Label ID="naso" runat="server"></asp:Label>
            </td>
            </tr>
             <tr>
            <td class="auto-style2">

                Resumen</td>
            <td class="auto-style1">

                <asp:TextBox ID="resumenaso" runat="server"></asp:TextBox>
                 </td>
                 <td></td><td>
                 <asp:Label ID="raso" runat="server"></asp:Label>
                 </td>
            </tr>
             
            <tr>
            <td class="auto-style2">

                Logo</td>
            <td class="auto-style1">

                <asp:TextBox ID="logo" runat="server"></asp:TextBox>
                 </td>
                 <td></td><td>
                 <asp:Label ID="log" runat="server"></asp:Label>
                 </td>
            </tr>
            <td>Nickname</td>
            <td>
                <asp:TextBox ID="nickname_asociacion" runat="server"></asp:TextBox>
            </td>
            <td></td>
            <td>
                <asp:Label ID="nick_aso" runat="server"></asp:Label>
            </td>

            
             
            <tr><td>
                <asp:Button ID="Button10" runat="server" OnClick="Button10_Click" Text="CREAR" />
                </td>

                <td>
                    <asp:Button ID="Button11" runat="server" OnClick="Button11_Click" Text="Publicar Asociacion" />
                </td>
            </tr>
            

            </table>

        
        <br />
        <br />
        <br />

        <table>
            <tr><td>ENVIAR</td><td>MENSAJE</td></tr>
            <tr><td>Mensaje</td><td>
                <asp:TextBox ID="mensaje" runat="server"></asp:TextBox>
                </td></tr>
            <tr><td>Destinatario</td><td>
                <asp:TextBox ID="destinatario" runat="server"></asp:TextBox>
                </td></tr>
            <tr><td>Remitente</td><td>
                <asp:TextBox ID="remitente" runat="server"></asp:TextBox>
                </td></tr>

            <tr><td>
                <asp:Button ID="Button12" runat="server" Text="Enviar" OnClick="Button12_Click" />
                </td></tr>



        </table>

    </form>
</body>
</html>
