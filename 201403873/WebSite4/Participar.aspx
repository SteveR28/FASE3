<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Participar.aspx.cs" Inherits="Participar" %>

<%-- Agregue aquí los controles de contenido --%>
<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <br />
    <br />
    <br />
    <table>
            <tr><td>PARTICIPAR</td>
                <td>EN PROYECTO</td>
            </tr>
        <tr>
            <td class="auto-style2">

                Codigo detalle proyecto</td>
            <td class="auto-style1">

                <asp:TextBox ID="pco" runat="server"></asp:TextBox>
            </td>
            <td></td><td>
            <asp:Label ID="ctp" runat="server"></asp:Label>
            </td>
            </tr>
        <tr>
            <td class="auto-style2">

                Involucrados Nickname</td>
            <td class="auto-style1">

                <asp:TextBox ID="pi" runat="server"></asp:TextBox>
            </td>
            <td></td><td>
            <asp:Label ID="ntp" runat="server"></asp:Label>
            </td>
            </tr>
             <tr>
            <td class="auto-style2">

                Codigo Proyecto</td>
            <td class="auto-style1">

                <asp:TextBox ID="pc" runat="server"></asp:TextBox>
                 </td>
                 <td></td><td>
                 <asp:Label ID="dtp" runat="server"></asp:Label>
                 </td>
            </tr>
             
            <tr><td>
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Registrar" />
                </td>

                <td>
                    <br />
                </td>
            </tr>
            

            </table>

    <br />
    <br />
    <br />
    <table>
            <tr><td>PARTICIPAR</td>
                <td>EN TAREA</td>
            </tr>
        <tr>
            <td class="auto-style2">

                Codigo detalle tarea</td>
            <td class="auto-style1">

                <asp:TextBox ID="tc" runat="server"></asp:TextBox>
            </td>
            <td></td><td>
            <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            </tr>
        <tr>
            <td class="auto-style2">

                Lista Involucrados</td>
            <td class="auto-style1">

                <asp:TextBox ID="tl" runat="server"></asp:TextBox>
            </td>
            <td></td><td>
            <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
            </tr>
             <tr>
            <td class="auto-style2">

                Codigo de Tarea/proyecto</td>
            <td class="auto-style1">

                <asp:TextBox ID="tct" runat="server"></asp:TextBox>
                 </td>
                 <td></td><td>
                 <asp:Label ID="Label3" runat="server"></asp:Label>
                 </td>
            </tr>
             
            <tr><td>
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Registrar" />
                </td>

                <td>
                    <br />
                </td>
            </tr>
            

            </table>
</asp:Content>

