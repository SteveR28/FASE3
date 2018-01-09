<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AgregarUsuario.aspx.cs" Inherits="AgregarUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
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
    </form>
</body>
</html>
