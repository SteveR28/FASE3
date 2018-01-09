<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TareaIndividual.aspx.cs" Inherits="TareaIndividual" %>

<%-- Agregue aquí los controles de contenido --%>
<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <br />
    <br />
    <br />
    <table>
            <tr><td>INGRESA DATOS</td>
                <td>TAREA</td>
            </tr>
        <tr>
            <td class="auto-style2">

                Codigo</td>
            <td class="auto-style1">

                <asp:TextBox ID="coditarea" runat="server"></asp:TextBox>
            </td>
            <td></td><td>
            <asp:Label ID="codta" runat="server"></asp:Label>
            </td>
            </tr>
        <tr>
            <td class="auto-style2">

                Nombre</td>
            <td class="auto-style1">

                <asp:TextBox ID="nombret" runat="server"></asp:TextBox>
            </td>
            <td></td><td>
            <asp:Label ID="nomt" runat="server"></asp:Label>
            </td>
            </tr>
             <tr>
            <td class="auto-style2">

                Descripcion</td>
            <td class="auto-style1">

                <asp:TextBox ID="descrip" runat="server"></asp:TextBox>
                 </td>
                 <td></td><td>
                 <asp:Label ID="dest" runat="server"></asp:Label>
                 </td>
            </tr>
             <tr>
            <td class="auto-style2">

                Fecha inicio</td>
            <td class="auto-style1">

                <asp:TextBox ID="fechaitarea" runat="server"></asp:TextBox>
                 </td>
                 <td></td><td>
                 <asp:Label ID="itarea" runat="server"></asp:Label>
                 </td>
            </tr>
             <tr>
            <td class="auto-style2">

                Requisitos</td>
            <td class="auto-style1">

                <asp:TextBox ID="requisitos" runat="server"></asp:TextBox>
                 </td>
                 <td></td><td>
                 <asp:Label ID="requi" runat="server"></asp:Label>
                 </td>
            </tr>
            <tr>
            <td class="auto-style2">

                Pago</td>
            <td class="auto-style1">

                <asp:TextBox ID="pagot" runat="server"></asp:TextBox>
                 </td>
                 <td></td><td>
                 <asp:Label ID="pagt" runat="server"></asp:Label>
                 </td>
            </tr>
             <tr>
            <td class="auto-style2">

                Nickname</td>
            <td class="auto-style1">

                <asp:TextBox ID="nicktarea" runat="server"></asp:TextBox>
                 </td>
                 <td></td><td>
                 <asp:Label ID="nickt" runat="server"></asp:Label>
                 </td>
            </tr>
            <tr><td>
                <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Ingresar Tarea" />
                </td>

                <td>
                    <br />
                </td>
            </tr>
            

            </table>

    <br /><br /><br /><br />

    <table>
            <tr><td>PARTICIPAR EN</td>
                <td>TAREA</td>
            </tr>
        <tr>
            <td class="auto-style2">

                Nickname</td>
            <td class="auto-style1">

                <asp:TextBox ID="nt" runat="server"></asp:TextBox>
            </td>
            <td></td><td>
            <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            </tr>
        <tr>
            <td class="auto-style2">

                coigo tarea individuak</td>
            <td class="auto-style1">

                <asp:TextBox ID="nc" runat="server"></asp:TextBox>
            </td>
            <td></td><td>
            <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
            </tr>
             
            <tr><td>
                <asp:Button ID="Button5" runat="server" OnClick="Button5_Click1" Text="Registrar" />
                </td>

                <td>
                    <br />
                </td>
            </tr>
            

            </table>

    <br />Visualizar Participantes<br />
    <asp:TextBox ID="t12" runat="server">Codigo Tarea</asp:TextBox>
    <br />
    <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Ver" />
    <br />
    <asp:Table ID="Table1" runat="server">
    </asp:Table>
    <br />


</asp:Content>

