<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Historial.aspx.cs" Inherits="Historial" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        IMPRIMIR LOS HISTORIALES DE LA APLICACION</div>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Usuario" />
        <asp:Table ID="Table1" runat="server">
        </asp:Table>
        <asp:Label ID="usuarioR" runat="server" Text="Usuario"></asp:Label>
    </form>
</body>
</html>
