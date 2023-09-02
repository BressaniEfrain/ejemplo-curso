<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="TP3.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 84%;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
            width: 138px;
        }
        .auto-style5 {
            width: 140px;
        }
        .auto-style6 {
            width: 100%;
            height: 41px;
        }
        .auto-style7 {
            width: 138px;
        }
        .auto-style8 {
            width: 138px;
            height: 26px;
        }
        .auto-style9 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style6">
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td>Localidades</td>
                </tr>
            </table>
            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style7">Nombre de localidad:</td>
                    <td>
                        <asp:TextBox ID="txtLocalidad" runat="server"></asp:TextBox>
                        <asp:Label ID="lblError" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td>
                        <asp:Button ID="btnGuardarLocalidad" runat="server" OnClick="btnGuardarLocalidad_Click" Text="Guardar localidad" style="height: 26px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style2">Usuarios</td>
                </tr>
                <tr>
                    <td class="auto-style7">Nombre de usuario:</td>
                    <td>
                        <asp:TextBox ID="txtNombreUsuario" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombreUsuario" ValidationGroup="guardar">Error</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Contraseña:</td>
                    <td>
                        <asp:TextBox ID="txtContraseña" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvContraseña" runat="server" ControlToValidate="txtContraseña" ValidationGroup="guardar">Error</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">Repetir contraseña:</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="txtContraseña2" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:CompareValidator ID="cvContraseña" runat="server" ControlToCompare="txtContraseña" ControlToValidate="txtContraseña2" ValidationGroup="guardar">Las contraseñas no coinciden</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Correo&nbsp; electronico:</td>
                    <td>
                        <asp:TextBox ID="txtMail" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="revMail" runat="server" ControlToValidate="txtMail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="guardar">Ingrese un correo valido</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">CP:</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtCp" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="revCp" runat="server" ControlToValidate="txtCp" ValidationExpression="\d{4}" ValidationGroup="guardar">CP invalido</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">Localidades</td>
                    <td>
                        <asp:DropDownList ID="ddlLocalidades" runat="server" ValidationGroup="guardar">
                            <asp:ListItem>-- Seleccion localidad --</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvLocalidad" runat="server" ControlToValidate="ddlLocalidades" ErrorMessage="RequiredFieldValidator" InitialValue="-- Seleccion localidad --" ValidationGroup="guardar">seleccione un localidad</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td>
                        <asp:Button ID="btnGuardarUsuario" runat="server" OnClick="btnGuardarUsuario_Click" Text="Guardar usuario" />
&nbsp;&nbsp; </td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:Button ID="btnInicio" runat="server" OnClick="btnInicio_Click" Text="ir a inicio.aspx" />
                        <br />
                        <br />
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="guardar" />
                    </td>
                    <td>
                        <asp:Label ID="lblBienvenida" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
    <p>
&nbsp;</p>
</body>
</html>
