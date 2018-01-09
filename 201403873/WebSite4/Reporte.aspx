<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Reporte.aspx.cs" Inherits="Reporte" %>

<%-- Agregue aquí los controles de contenido --%>
<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <br />
    <br />
    <br />
    <br />
    <br />

     IMPRIMIR LOS HISTORIALES DE LA APLICACION</div>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Usuario" />
        <asp:Table ID="Table1" runat="server">
        </asp:Table>
        <asp:Label ID="usuarioR" runat="server" Text="Usuario"></asp:Label>
<textarea id="TextArea1" name="S1" style="width: 506px; height: 102px"></textarea><br />
<br />
</asp:Content>

