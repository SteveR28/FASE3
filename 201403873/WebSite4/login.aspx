<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
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
    </form>
</body>
</html>
