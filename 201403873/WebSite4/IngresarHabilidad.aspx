<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="IngresarHabilidad.aspx.cs" Inherits="IngresarHabilidad" %>

<%-- Agregue aquí los controles de contenido --%>
<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <br />
    <br />
    <br />
    <br />

    <table>
            <tr><td style="width: 274px">INGRESA </td>
                <td style="width: 206px">HABILIDADES</td>
            </tr>
        <tr>
            <td class="auto-style2" style="width: 274px">

                Codigo Habilidad</td>
            <td class="auto-style1" style="width: 206px">

                <asp:TextBox ID="codhab" runat="server"></asp:TextBox>
            </td>
            <td></td><td>
            <asp:Label ID="ch" runat="server"></asp:Label>
            </td>
            </tr>
        <tr>
            <td class="auto-style2" style="width: 274px">

                Nombre</td>
            <td class="auto-style1" style="width: 206px">

                <asp:TextBox ID="nombrehab" runat="server"></asp:TextBox>
            </td>
            <td></td><td>
            <asp:Label ID="nh" runat="server"></asp:Label>
            </td>
            </tr>
             <tr>
            <td class="auto-style2" style="width: 274px">

                Resumen</td>
            <td class="auto-style1" style="width: 206px">

                <asp:TextBox ID="resumen" runat="server"></asp:TextBox>
                 </td>
                 <td></td><td>
                 <asp:Label ID="rh" runat="server"></asp:Label>
                 </td>
            </tr>
             
            <tr>
            <td class="auto-style2" style="width: 274px">

                &nbsp;</td>
            <td class="auto-style1" style="width: 206px">

                &nbsp;</td>
                 <td></td><td>
                 &nbsp;</td>
            </tr>
             <tr>
            <td class="auto-style2" style="width: 274px">

                Karma</td>
            <td class="auto-style1" style="width: 206px">

                <asp:TextBox ID="karma" runat="server"></asp:TextBox>
                 </td>
                 <td></td><td>
                 <asp:Label ID="kah" runat="server"></asp:Label>
                 </td>
            </tr>
            <tr><td style="width: 274px">
                <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="Ingresar Habilidad" />
                </td>

                <td style="width: 206px">
                    <asp:Button ID="Button11" runat="server" OnClick="Button11_Click" Text="Visualizar" />
                    <asp:TextBox ID="h1" runat="server">Codigo Habilidad</asp:TextBox>
                </td>
            </tr>
            

            </table>

    <asp:Table ID="Table1" runat="server">
    </asp:Table>

    <br />
    <br />
    <br />
    <br />

    <br />

    <table>
            <tr><td style="width: 274px">INGRESA </td>
                <td style="width: 206px">CONOCIMIENTO</td>
            </tr>
        <tr>
            <td class="auto-style2" style="width: 274px">

                Codigo Conocimiento</td>
            <td class="auto-style1" style="width: 206px">

                <asp:TextBox ID="codcono" runat="server"></asp:TextBox>
            </td>
            <td></td><td>
            <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            </tr>
        <tr>
            <td class="auto-style2" style="width: 274px">

                Nombre</td>
            <td class="auto-style1" style="width: 206px">

                <asp:TextBox ID="nomcono" runat="server"></asp:TextBox>
            </td>
            <td></td><td>
            <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
            </tr>
             <tr>
            <td class="auto-style2" style="width: 274px">

                Descripcion</td>
            <td class="auto-style1" style="width: 206px">

                <asp:TextBox ID="descono" runat="server"></asp:TextBox>
                 </td>
                 <td></td><td>
                 <asp:Label ID="Label3" runat="server"></asp:Label>
                 </td>
            </tr>
             
            <tr>
            <td class="auto-style2" style="width: 274px">

                &nbsp;</td>
            <td class="auto-style1" style="width: 206px">

                &nbsp;</td>
                 <td></td><td>
                 &nbsp;</td>
            </tr>
             <tr>
            <td class="auto-style2" style="width: 274px">

                Codigo Habilidad</td>
            <td class="auto-style1" style="width: 206px">

                <asp:TextBox ID="codhabi" runat="server"></asp:TextBox>
                 </td>
                 <td></td><td>
                 <asp:Label ID="Label4" runat="server"></asp:Label>
                 </td>
            </tr>
            <tr><td style="width: 274px">
                <asp:Button ID="Button10" runat="server" OnClick="Button10_Click" Text="Ingresar Conocimiento" />
                </td>

                <td style="width: 206px">
                    <asp:Button ID="Button12" runat="server" Text="Ver" OnClick="Button12_Click" />
                    <asp:TextBox ID="h2" runat="server">Codigo Habilidad</asp:TextBox>
                </td>
            </tr>
            

            </table>

    <br /><br />
    <asp:Table ID="Table2" runat="server">
    </asp:Table>
    <br />
    <br /><br /><br />

    <table>
            <tr><td style="width: 274px">AGREGAR </td>
                <td style="width: 206px">CONOCIMIENTO</td>
            </tr>
        <tr>
            <td class="auto-style2" style="width: 274px">

                Nickname</td>
            <td class="auto-style1" style="width: 206px">

                <asp:TextBox ID="s1" runat="server"></asp:TextBox>
            </td>
            <td></td><td>
            <asp:Label ID="Label5" runat="server"></asp:Label>
            </td>
            </tr>
        <tr>
            <td class="auto-style2" style="width: 274px">

                Codigo Conocimiento</td>
            <td class="auto-style1" style="width: 206px">

                <asp:TextBox ID="d1" runat="server"></asp:TextBox>
            </td>
            <td></td><td>
            <asp:Label ID="Label6" runat="server"></asp:Label>
            </td>
            </tr>
             
                <td style="width: 206px">
                    <asp:Button ID="Button15" runat="server" OnClick="Button15_Click" Text="Agregar a Perfil" />
                    <br />
                    <br />
                    <asp:Button ID="Button14" runat="server" OnClick="Button14_Click" Text="Ver Karma" />
                    <asp:TextBox ID="t10" runat="server">Codigo Habilidad</asp:TextBox>
                </td>
            </tr>
            

            </table>

    <asp:Label ID="lkarma" runat="server" Text="Label"></asp:Label>

    <br /><br /><br />


</asp:Content>

