<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Timeline.aspx.cs" Inherits="Timeline" %>

<%-- Agregue aquí los controles de contenido --%>
<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
    Visualizar Estados de Usuarios que Sigue<br />
    <asp:TextBox ID="TextBox1" runat="server">Nickname</asp:TextBox>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Ver" />
    <asp:Table ID="Table1" runat="server" style="margin-top: 0px">
    </asp:Table>
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

