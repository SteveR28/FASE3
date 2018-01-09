<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Estados.aspx.cs" Inherits="Estados" %>

<%-- Agregue aquí los controles de contenido --%>
<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <br />
    <br />
    <br />
    <table>
            <tr><td>INGRESA DATOS</td>
                <td>ESTADO</td>
            </tr>
            <tr><td>&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr><td>Descripcion</td>
                <td>
                    <asp:TextBox ID="descripcion" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="des" runat="server"></asp:Label>
                </td>
            </tr>
            <tr><td>Nickname</td>
                <td>
                    <asp:TextBox ID="nicknamecoment" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="n2" runat="server"></asp:Label>
                </td>
            </tr>
            <tr><td>
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Publicar Estado" />
                </td><td></td></tr>
        </table>
    <br /><br /><br /><br /><br /><br />

    <table>
            <tr><td>COMENTAR</td><td>ESTADO</td></tr>
            <tr><td>Comentario</td><td>
                <asp:TextBox ID="comentario" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="labelcomentario" runat="server"></asp:Label>
                </td>
            </tr>
            <tr><td>No Estado</td><td>
                <asp:TextBox ID="no_estado" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="labelnoestado" runat="server"></asp:Label>
                </td>
            </tr>
            

            <tr><td>
                <asp:Button ID="Button13" runat="server" OnClick="Button13_Click" Text="Comentar" />
                </td>
                
            </tr>



        </table>


</asp:Content>

