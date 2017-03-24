<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Spotify.Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="Styles.css" />
</head>
<body style="background-color:rgba(0,0,0,1)">
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server"></asp:UpdatePanel>                  
    <CENTER>
    <div>
    
        <asp:DropDownList ID="ListBusqueda" runat="server" OnSelectedIndexChanged="ListBusqueda_SelectedIndexChanged">
            <asp:ListItem>Cancion</asp:ListItem>
            <asp:ListItem>Artista</asp:ListItem>
            <asp:ListItem>Álbum y Artista</asp:ListItem>
        </asp:DropDownList>
        <asp:TextBox ID="txt_Busqueda" runat="server" placeholder='Buscar'></asp:TextBox>
        <asp:TextBox ID="txt_Busqueda2" runat="server" placeholder='Busqueda Avanzada'></asp:TextBox>
        <asp:Button ID="btn_Buscar" runat="server" OnClick="Button1_Click" Text="Buscar" />
        <br />
        <asp:Button ID="btnAdministrar" runat="server" Text="Panel De Administración" Visible="False" OnClick="btnAdministrar_Click" />

    </div>
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" GroupItemCount="1">
            <AlternatingItemTemplate>
                <td runat="server" style="background-color:#008A8C; max-width: 300px;">
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
                    <br />
                    <contenttemplate>
                        <cc1:Rating ID="Rating1" runat="server"
                            StarCssClass="starRating"
                            FilledStarCssClass="FilledStars"
                            EmptyStarCssClass="EmptyStars"
                            WaitingStarCssClass="HalfStars"
                            CurrentRating='<%#(int)Math.Ceiling((Double)Eval("RankTotal")) %>'
                            MaxRating="5"
                            ></cc1:Rating>
                    </contenttemplate>
                    </DIV></td>
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
                    <asp:TextBox ID="AlbumTextBox0" runat="server" Text='<%# Bind("Album") %>' />
                    <br />Año:
                    <asp:TextBox ID="AñoTextBox0" runat="server" Text='<%# Bind("Año") %>' />
                    <br />Artista:
                    <asp:TextBox ID="ArtistaTextBox0" runat="server" Text='<%# Bind("Artista") %>' />
                    <br />ImageUrl:
                    <asp:TextBox ID="ImageUrlTextBox0" runat="server" Text='<%# Bind("ImageUrl") %>' />
                    <br />RankTotal:
                    <asp:TextBox ID="RankTotalTextBox0" runat="server" Text='<%# Bind("RankTotal") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insertar" />
                    <br />
                    <asp:Button ID="CancelButton0" runat="server" CommandName="Cancel" Text="Borrar" />
                    <br /></td>
            </InsertItemTemplate>
            <ItemTemplate>
                <td runat="server" style="background-color:#DCDCDC;color: #000000;">
                    <DIV Style="color:white; background-color:rgba(0,0,0,0.40); max-width: 300px;">
                    <CENTER><img src="<%# Eval("ImageUrl") %>" style="width:300px; height:300px;"/></CENTER>
                    <br />Album:
                    <asp:Label ID="AlbumLabel0" runat="server" Text='<%# Eval("Album") %>' />                                    
                    <br />Año:
                    <asp:Label ID="AñoLabel0" runat="server" Text='<%# Eval("Año") %>' />
                    <br />Artista:
                    <asp:Label ID="ArtistaLabel0" runat="server" Text='<%# Eval("Artista") %>' />
                   <!-- <br />ImageUrl:
                    <asp:Label ID="ImageUrlLabel" runat="server" Text='<%//# Eval("ImageUrl") %>' />     -->
                    <br />Rank:
                    <asp:Label ID="RankTotalLabel0" runat="server" Text='<%# Eval("RankTotal") %>' />
                    <br />
                    <contenttemplate>
                    
                    <cc1:Rating ID="Rating1" runat="server"
                        StarCssClass="starRating"
                        FilledStarCssClass="FilledStars"
                        EmptyStarCssClass="EmptyStars"
                        WaitingStarCssClass="HalfStars"
                        CurrentRating='<%#(int)Math.Ceiling((Double)Eval("RankTotal")) %>'
                        MaxRating="5"
                        ></cc1:Rating>
                    </contenttemplate>
                    </DIV></td>
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
                    <asp:Label ID="AlbumLabel1" runat="server" Text='<%# Eval("Album") %>' />
                    <br />Año:
                    <asp:Label ID="AñoLabel1" runat="server" Text='<%# Eval("Año") %>' />
                    <br />Artista:
                    <asp:Label ID="ArtistaLabel1" runat="server" Text='<%# Eval("Artista") %>' />
                    <br />ImageUrl:
                    <asp:Label ID="ImageUrlLabel" runat="server" Text='<%# Eval("ImageUrl") %>' />
                    <br />RankTotal:
                    <asp:Label ID="RankTotalLabel1" runat="server" Text='<%# Eval("RankTotal") %>' />
                    <br /></td>
            </SelectedItemTemplate>
        </asp:ListView>
        <div class="ListCanciones">
        <asp:ListView ID="ListView2" runat="server" GroupItemCount="1" Visible="False" GroupPlaceholderID="groupPlaceholder2" ItemPlaceholderID="itemPlaceholder2">
            <ItemTemplate>
                <td id="Td1" runat="server" style="background-color:#008A8C;color: #000000; max-width: 300px;">
                    <DIV Style="color:white; background-color:rgba(0,0,0,0.40);">
                    <CENTER><img src="<%# Eval("ImageUrl") %>" style="width:300px; height:300px;"/></CENTER>
                    <br />Artista:
                    <asp:Label ID="ArtistaLabel2" runat="server" Text='<%# Eval("Artista") %>' />
                    <br />Album:
                    <asp:Label ID="AlbumLabel2" runat="server" Text='<%# Eval("Album") %>' />                                    
                    <br />Cancion:
                    <asp:Label ID="CancionLabel1" runat="server" Text='<%# Eval("Cancion") %>' />
                    <br />Genero:
                    <asp:Label ID="GeneroLabel1" runat="server" Text='<%# Eval("Genero") %>' />
                    <br />Compositor:
                    <asp:Label ID="CompositorLabel1" runat="server" Text='<%# Eval("Compositor") %>' />
                    <br />Colaboradores:
                    <asp:Label ID="ColaboradoresLabel1" runat="server" Text='<%# Eval("Colaboradores") %>' />
                    <br />
                    <audio src='<%# Eval("Link") %>' controls>
                    Your browser does not support the audio element.
                    </audio>
                    <br /></DIV></td>
            </ItemTemplate>
            <GroupTemplate>
                <tr id="itemPlaceholderContainer2" runat="server">
                    <td id="itemPlaceholder2" runat="server"></td>
                </tr>
            </GroupTemplate>
            <LayoutTemplate>
                <table id="Table1" runat="server">
                    <tr id="Tr1" runat="server">
                        <td id="Td2" runat="server">
                            <table id="groupPlaceholderContainer2" runat="server" border="1" style="background-color: #FFFFFF; border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr id="groupPlaceholder2" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr id="Tr2" runat="server">
                        <td id="Td3" runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;"></td>
                    </tr>
                </table>
            </LayoutTemplate>
        </asp:ListView>
        </div>
        <div class="ListAlbums">
        <asp:ListView ID="ListView3" runat="server" GroupItemCount="1" Visible="False" GroupPlaceholderID="groupPlaceholder3" ItemPlaceholderID="itemPlaceholder3">
            <ItemTemplate>
                <td id="Td1" runat="server" style="background-color:#DCDCDC;color: #000000; max-width: 300px;">
                    <DIV Style="color:white; background-color:rgba(0,0,0,0.40);">
                    <CENTER><img src="<%# Eval("ImageUrl") %>" style="width:300px; height:300px;"/></CENTER>                        
                    <br />Album:
                    <asp:Label ID="AlbumLabel2" runat="server" Text='<%# Eval("Album") %>' />  
                    <br />Artista:
                    <asp:Label ID="ArtistaLabel2" runat="server" Text='<%# Eval("Artista") %>' />                                  
                    <br />Año:
                    <asp:Label ID="AñoLabel2" runat="server" Text='<%# Eval("Año") %>' />
                    <br />Rank:
                    <asp:Label ID="RankLabel2" runat="server" Text='<%# Eval("RankTotal") %>' />
                    <br />
                    <contenttemplate>
                    
                    <cc1:Rating ID="Rating3" runat="server"
                        StarCssClass="starRating"
                        FilledStarCssClass="FilledStars"
                        EmptyStarCssClass="EmptyStars"
                        WaitingStarCssClass="HalfStars"
                        CurrentRating='<%#(int)Math.Ceiling((Double)Eval("RankTotal")) %>'
                        MaxRating="5"
                        ></cc1:Rating>
                    </contenttemplate>
                    </DIV></td>
            </ItemTemplate>
            <GroupTemplate>
                <tr id="itemPlaceholderContainer3" runat="server">
                    <td id="itemPlaceholder3" runat="server"></td>
                </tr>
            </GroupTemplate>
            <LayoutTemplate>
                <table id="Table1" runat="server">
                    <tr id="Tr1" runat="server">
                        <td id="Td2" runat="server">
                            <table id="groupPlaceholderContainer3" runat="server" border="1" style="background-color: #FFFFFF; border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr id="groupPlaceholder3" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr id="Tr2" runat="server">
                        <td id="Td3" runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;"></td>
                    </tr>
                </table>
            </LayoutTemplate>
        </asp:ListView>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:spotifydbConnectionString %>" SelectCommand="SELECT TOP (5) Album, Año, Artista, ImageUrl, RankTotal FROM Albums ORDER BY RankTotal DESC"></asp:SqlDataSource>
    </CENTER>
    </form>
</body>
</html>
