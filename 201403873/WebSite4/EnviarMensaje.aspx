<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="EnviarMensaje.aspx.cs" Inherits="EnviarMensaje" %>

<%-- Agregue aquí los controles de contenido --%>
<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <br />
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
</asp:Content>

