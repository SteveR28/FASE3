<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Asociaciones.aspx.cs" Inherits="Asociaciones" %>

<%-- Agregue aquí los controles de contenido --%>
<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <br />
    <br />
    <table>
            <tr><td>CREAR</td>
                <td>ASOCIACION</td>
            </tr>
        <tr>
            <td class="auto-style2">

                Codigo Asociacion</td>
            <td class="auto-style1">

                <asp:TextBox ID="codaso" runat="server"></asp:TextBox>
            </td>
            <td></td><td>
            <asp:Label ID="ca" runat="server"></asp:Label>
            </td>
            </tr>
        <tr>
            <td class="auto-style2">

                Nombre</td>
            <td class="auto-style1">

                <asp:TextBox ID="nombreaso" runat="server"></asp:TextBox>
            </td>
            <td></td><td>
            <asp:Label ID="naso" runat="server"></asp:Label>
            </td>
            </tr>
             <tr>
            <td class="auto-style2">

                Resumen</td>
            <td class="auto-style1">

                <asp:TextBox ID="resumenaso" runat="server"></asp:TextBox>
                 </td>
                 <td></td><td>
                 <asp:Label ID="raso" runat="server"></asp:Label>
                 </td>
            </tr>
             
            <tr>
            <td class="auto-style2">

                Logo</td>
            <td class="auto-style1">

                <asp:TextBox ID="logo" runat="server"></asp:TextBox>
                 </td>
                 <td></td><td>
                 <asp:Label ID="log" runat="server"></asp:Label>
                 </td>
            </tr>
            <td>Nickname</td>
            <td>
                <asp:TextBox ID="nickname_asociacion" runat="server"></asp:TextBox>
            </td>
            <td></td>
            <td>
                <asp:Label ID="nick_aso" runat="server"></asp:Label>
            </td>

            
             
            <tr><td>
                <asp:Button ID="Button10" runat="server" OnClick="Button10_Click" Text="CREAR" />
                </td>

                <td>
                    <asp:Button ID="Button11" runat="server" OnClick="Button11_Click" Text="Visualizar Asociacion" />
                </td>
            </tr>
            

            </table>
</asp:Content>

