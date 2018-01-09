<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Proyecto.aspx.cs" Inherits="Proyecto" %>

<%-- Agregue aquí los controles de contenido --%>
<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <p>
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
                    <br />
                </td>
            </tr>
            

            </table></p>

    <p>
                &nbsp;</p>
    <p>
                &nbsp;</p>
    <p>
                Visualizar Proyectos</p>
    <p>
                <asp:TextBox ID="nickproyecto" runat="server">Ingrese Nickname</asp:TextBox>
    </p>
    <p>
                <asp:Button ID="Button10" runat="server" OnClick="Button10_Click" Text="Visualizar Proyectos" />
    </p>
    <p>
                <asp:Table ID="Table1" runat="server">
                </asp:Table>
    </p>
    <p>
                &nbsp;</p>
    <p>
                &nbsp;</p>
    <p>
                Visualizar Tareas&nbsp;&nbsp;&nbsp; </p>
    <asp:TextBox ID="coditarea" runat="server" Width="185px">Ingresa Codigo Proyecto</asp:TextBox>
    <p>
                <asp:Button ID="Button9" runat="server" OnClick="Button9_Click" Text="Visualizar Tareas" />
    </p>
    <p>
                &nbsp;</p>
    <p>
                <asp:Table ID="Table2" runat="server">
                </asp:Table>
    </p>
    <p>
                &nbsp;</p>
    <p>
                <asp:Button ID="Button11" runat="server" OnClick="Button11_Click" Text="Participar" />
    </p>
    <p>
                &nbsp;</p>
        </asp:Content>

