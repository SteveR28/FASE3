<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AgregarUsuario1.aspx.cs" Inherits="AgregarUsuario1" %>

<%-- Agregue aquí los controles de contenido --%>
<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <br />
    <br />
    <div>
    
        AGREGAR USUARIO</div>
        <p>
            Nikcname<asp:TextBox ID="nickname" runat="server"></asp:TextBox>
        </p>
        <p>
            Nombre<asp:TextBox ID="nombre" runat="server"></asp:TextBox>
        </p>
        <p>
            Correo<asp:TextBox ID="correo" runat="server"></asp:TextBox>
        </p>
        <p>
            Fecha Na<asp:TextBox ID="fechanac" runat="server"></asp:TextBox>
        </p>
        <p>
            contra<asp:TextBox ID="contra" runat="server"></asp:TextBox>
        </p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Agregar" />
        <p>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Ir a inicio de Sesion" />
        </p>
</asp:Content>

