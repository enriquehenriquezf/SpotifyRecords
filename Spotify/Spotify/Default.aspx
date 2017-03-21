<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Spotify.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="Styles.css" />
</head>
<body style="background-color:rgba(0,0,0,1)">
    <form id="form1" runat="server">
    <CENTER>
    <div>
    
        <asp:DropDownList ID="ListBusqueda" runat="server" OnSelectedIndexChanged="ListBusqueda_SelectedIndexChanged">
            <asp:ListItem>Cancion</asp:ListItem>
            <asp:ListItem>Artista</asp:ListItem>
            <asp:ListItem>Álbum y Artista</asp:ListItem>
        </asp:DropDownList>
        <asp:TextBox ID="txt_Busqueda" runat="server"></asp:TextBox>
        <asp:TextBox ID="txt_Busqueda2" runat="server" Visible="False"></asp:TextBox>
        <asp:Button ID="btn_Buscar" runat="server" OnClick="Button1_Click" Text="Buscar" />
    
    </div>
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" GroupItemCount="1">
            <AlternatingItemTemplate>
                <td runat="server" style="background-color:#008A8C;">
                    <DIV Style="color:white; background-color:rgba(0,0,0,0.40);">                         
                    <CENTER><img src="<%# Eval("ImageUrl") %>" style="width:300px; height:300px;" /></CENTER>
                    <br />Album:
                    <asp:Label ID="AlbumLabel" runat="server" Text='<%# Eval("Album") %>'/>
                    <br />Año:
                    <asp:Label ID="AñoLabel" runat="server" Text='<%# Eval("Año") %>' />
                    <br />Artista:
                    <asp:Label ID="ArtistaLabel" runat="server" Text='<%# Eval("Artista") %>' />                    
                    <!--  <br />ImageUrl:
                    <asp:Label ID="ImageUrlLabel" runat="server" Text='<%//# Eval("ImageUrl") %>' /> -->
                    <br />Rank:
                    <asp:Label ID="RankTotalLabel" runat="server" Text='<%# Eval("RankTotal") %>' />
                    <br /></DIV></td>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <td runat="server" style="background-color:#008A8C;color: #FFFFFF;">Album:
                    <asp:TextBox ID="AlbumTextBox" runat="server" Text='<%# Bind("Album") %>' />
                    <br />Año:
                    <asp:TextBox ID="AñoTextBox" runat="server" Text='<%# Bind("Año") %>' />
                    <br />Artista:
                    <asp:TextBox ID="ArtistaTextBox" runat="server" Text='<%# Bind("Artista") %>' />
                    <br />ImageUrl:
                    <asp:TextBox ID="ImageUrlTextBox" runat="server" Text='<%# Bind("ImageUrl") %>' />
                    <br />RankTotal:
                    <asp:TextBox ID="RankTotalTextBox" runat="server" Text='<%# Bind("RankTotal") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Actualizar" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancelar" />
                    <br /></td>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF; border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td>No se han devuelto datos.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <EmptyItemTemplate>
<td runat="server" />
            </EmptyItemTemplate>
            <GroupTemplate>
                <tr id="itemPlaceholderContainer" runat="server">
                    <td id="itemPlaceholder" runat="server"></td>
                </tr>
            </GroupTemplate>
            <InsertItemTemplate>
                <td runat="server" style="">Album:
                    <asp:TextBox ID="AlbumTextBox" runat="server" Text='<%# Bind("Album") %>' />
                    <br />Año:
                    <asp:TextBox ID="AñoTextBox" runat="server" Text='<%# Bind("Año") %>' />
                    <br />Artista:
                    <asp:TextBox ID="ArtistaTextBox" runat="server" Text='<%# Bind("Artista") %>' />
                    <br />ImageUrl:
                    <asp:TextBox ID="ImageUrlTextBox" runat="server" Text='<%# Bind("ImageUrl") %>' />
                    <br />RankTotal:
                    <asp:TextBox ID="RankTotalTextBox" runat="server" Text='<%# Bind("RankTotal") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insertar" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Borrar" />
                    <br /></td>
            </InsertItemTemplate>
            <ItemTemplate>
                <td runat="server" style="background-color:#DCDCDC;color: #000000;">
                    <DIV Style="color:white; background-color:rgba(0,0,0,0.40);">
                    <CENTER><img src="<%# Eval("ImageUrl") %>" style="width:300px; height:300px;"/></CENTER>
                    <br />Album:
                    <asp:Label ID="AlbumLabel" runat="server" Text='<%# Eval("Album") %>' />                                    
                    <br />Año:
                    <asp:Label ID="AñoLabel" runat="server" Text='<%# Eval("Año") %>' />
                    <br />Artista:
                    <asp:Label ID="ArtistaLabel" runat="server" Text='<%# Eval("Artista") %>' />
                   <!-- <br />ImageUrl:
                    <asp:Label ID="ImageUrlLabel" runat="server" Text='<%//# Eval("ImageUrl") %>' />     -->
                    <br />Rank:
                    <asp:Label ID="RankTotalLabel" runat="server" Text='<%# Eval("RankTotal") %>' />
                    <br /></DIV></td>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="groupPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF; border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr id="groupPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;"></td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <td runat="server" style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">Album:
                    <asp:Label ID="AlbumLabel" runat="server" Text='<%# Eval("Album") %>' />
                    <br />Año:
                    <asp:Label ID="AñoLabel" runat="server" Text='<%# Eval("Año") %>' />
                    <br />Artista:
                    <asp:Label ID="ArtistaLabel" runat="server" Text='<%# Eval("Artista") %>' />
                    <br />ImageUrl:
                    <asp:Label ID="ImageUrlLabel" runat="server" Text='<%# Eval("ImageUrl") %>' />
                    <br />RankTotal:
                    <asp:Label ID="RankTotalLabel" runat="server" Text='<%# Eval("RankTotal") %>' />
                    <br /></td>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:spotifydbConnectionString %>" SelectCommand="SELECT TOP (5) Album, Año, Artista, ImageUrl, RankTotal FROM Albums ORDER BY RankTotal DESC"></asp:SqlDataSource>
    </CENTER>
    </form>
</body>
</html>
