<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="VisualizarAsociacion.aspx.cs" Inherits="VisualizarAsociacion" %>

<%-- Agregue aquí los controles de contenido --%>
<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <asp:TextBox ID="TextBox1" runat="server">Codigo Asociacion</asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Visualizar" OnClick="Button1_Click" />
    <br />
    <br />
    <br />
    <br />
    <br />

    <table>
            <tr><td>AGREGAR</td>
                <td>MIEMBRO</td>
            </tr>
        <tr>
            <td class="auto-style2">

                No. Invitacion</td>
            <td class="auto-style1">

                <asp:TextBox ID="noinvitacion" runat="server"></asp:TextBox>
            </td>
            <td></td><td>
            <asp:Label ID="ca" runat="server"></asp:Label>
            </td>
            </tr>
        <tr>
            <td class="auto-style2">

                Codigo Asociacion</td>
            <td class="auto-style1">

                <asp:TextBox ID="codaso" runat="server"></asp:TextBox>
            </td>
            <td></td><td>
            <asp:Label ID="naso" runat="server"></asp:Label>
            </td>
            </tr>
             <tr>
            <td class="auto-style2">

                Nickname</td>
            <td class="auto-style1">

                <asp:TextBox ID="nickname" runat="server"></asp:TextBox>
                 </td>
                 <td></td><td>
                 <asp:Label ID="raso" runat="server"></asp:Label>
                 </td>
            </tr>
             
            

            
             
            <tr><td>
                <asp:Button ID="Button10" runat="server" OnClick="Button10_Click" Text="AGREGAR" />
                </td>

                <td>
                    <asp:Button ID="Button11" runat="server" OnClick="Button11_Click" Text="Visualizar Miembros" />
                </td>
            </tr>
            

            </table>
</asp:Content>

