<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Proyectosintareas.aspx.cs" Inherits="Proyectosintareas" %>

<%-- Agregue aquí los controles de contenido --%>
<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
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
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style1" Text="Agregar tarea" OnClick="Button2_Click" />
                </td>
            </tr>
            

            </table>
</asp:Content>

