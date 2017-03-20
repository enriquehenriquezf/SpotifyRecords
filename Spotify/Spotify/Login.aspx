<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Spotify.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="Styles.css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body class="Login_background">
    <form id="form1" runat="server" class="Login">
    <%--<div>--%>
    
        <asp:Login ID="Login1" runat="server" OnAuthenticate="Login1_Authenticate" PasswordLabelText="" UserNameLabelText="">
            <LayoutTemplate>
                <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                    <tr>
                        <td>
                            <table cellpadding="0">
                                <tr>
                                    <td align="center" colspan="2" style="color:white;">Iniciar sesión</td>
                                </tr>
                                <tr>
                                    <td align="right"></td>
                                    <td>
                                        <asp:TextBox ID="UserName" placeholder="Nombre de Usuario" runat="server" CssClass="txtLogin"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="El nombre de usuario es obligatorio." ToolTip="El nombre de usuario es obligatorio." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right"></td>
                                    <td>
                                        <asp:TextBox ID="Password" placeholder="Contraseña" runat="server" CssClass="txtLogin" TextMode="Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="La contraseña es obligatoria." ToolTip="La contraseña es obligatoria." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:CheckBox ID="RememberMe" runat="server" style="color:white;" Text="Recordármelo la próxima vez." />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2" style="color:Red;">
                                        <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" colspan="2">
                                        <asp:Button ID="LoginButton" runat="server" CommandName="Login" CssClass="btnLogin" Text="Inicio de sesión" ValidationGroup="Login1" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <LoginButtonStyle CssClass="btnLogin" />
            <TextBoxStyle CssClass="txtLogin" />
        </asp:Login>
    
    <%--</div>--%>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:spotifydbConnectionString %>" SelectCommand="SELECT * FROM [Login]"></asp:SqlDataSource>
    </form>
</body>
</html>
