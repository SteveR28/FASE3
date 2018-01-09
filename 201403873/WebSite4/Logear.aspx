<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Logear.aspx.cs" Inherits="Logear" %>

<%-- Agregue aquí los controles de contenido --%>
<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <br />
    <br />
    <br />
    <br />
    <br />
    <div>
    
        INICIAR SESION<br />
        <br />
        Nickname<asp:TextBox ID="nickname" runat="server"></asp:TextBox>
        <br />
        <br />
        Contrasena<asp:TextBox ID="contra" runat="server"></asp:TextBox>
        <br />
    
    </div>
        <asp:Button ID="Button1" runat="server" Text="Iniciar" OnClick="Button1_Click" />
    <br />
    <br />
    <br />
    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="margin-left: 0px" Text="Crear Usuario" Width="109px" />
    <br />
</asp:Content>

