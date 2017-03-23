<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPanel.aspx.cs" Inherits="Spotify.AdminPanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="background-color:#000; color:#fff;">
    <form id="form1" runat="server">
        <asp:Button ID="btn_Home" runat="server" OnClick="btn_Home_Click" Text="Home" />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Agregar Artista:"></asp:Label>
    <div>
    
        <asp:TextBox ID="txt_artista" runat="server" placeholder="Artista*"></asp:TextBox>
        <asp:TextBox ID="txt_ArtistaUrl" runat="server" placeholder="URL"></asp:TextBox>
        <asp:Button ID="btn_InsertArtista" runat="server" Text="Insertar" OnClick="btn_InsertArtista_Click" />
    
        <hr />
    
    </div>
        <asp:Label ID="Label2" runat="server" Text="Agregar Álbum:"></asp:Label>
        <div>
            <asp:TextBox ID="txt_Album_Artista" runat="server" placeholder="Artista*"></asp:TextBox>
            <asp:TextBox ID="txt_Album_Name" runat="server" placeholder="Nombre del Álbum*"></asp:TextBox>
            <asp:TextBox ID="txt_Album_Year" runat="server" placeholder="Año de lanzamiento*"></asp:TextBox>
            <asp:TextBox ID="txt_Album_URL" runat="server" placeholder="Imagen URL"></asp:TextBox>
            <asp:Button ID="btn_InsertarAlbum" runat="server" Text="Insertar" OnClick="btn_InsertarAlbum_Click" />
            <hr />
        </div>
        <asp:Label ID="Label3" runat="server" Text="Agregar Cancion:"></asp:Label>
        <div>
        <asp:TextBox ID="txt_Cancion_Artista" runat="server" placeholder="Artista"></asp:TextBox>
        
            <asp:TextBox ID="txt_Cancion_Album" runat="server" placeholder="Álbum*"></asp:TextBox>
            <asp:TextBox ID="txt_Cancion_Name" runat="server" placeholder="Cancion*"></asp:TextBox>
            <asp:TextBox ID="txt_Cancion_Compositor" runat="server" placeholder="Compositor*"></asp:TextBox>
            <asp:TextBox ID="txt_Cancion_Genero" runat="server" placeholder="Genero*"></asp:TextBox>
            <asp:TextBox ID="txt_Cancion_Colaboradores" runat="server" placeholder="Colaboradores"></asp:TextBox>
            <asp:TextBox ID="txt_Cancion_Link" runat="server" placeholder="Link de la Cancion"></asp:TextBox>
            <asp:TextBox ID="txt_Cancion_ImageURL" runat="server" placeholder="Imagen URL"></asp:TextBox>
            <asp:Button ID="btn_InsertarCancion" runat="server" Text="Insertar" OnClick="btn_InsertarCancion_Click" />
            <hr />
        
        </div>
        
        <asp:Label ID="Label4" runat="server" Text="Eliminar Artista:"></asp:Label>
        <div>
            <asp:TextBox ID="txt_Eliminar_Artista" runat="server" placeholder="Artista*"></asp:TextBox>
            <asp:Button ID="btn_EliminarArtista" runat="server" Text="Eliminar" OnClick="btn_EliminarArtista_Click" />
            <hr />
        </div>
        
        <asp:Label ID="Label5" runat="server" Text="Eliminar Álbum:"></asp:Label>
        <div>
            <asp:TextBox ID="txt_Eliminar_Album" runat="server" placeholder="Álbum*"></asp:TextBox>
            <asp:Button ID="btn_EliminarAlbum" runat="server" Text="Eliminar" OnClick="btn_EliminarAlbum_Click" />
        </div>
        
    </form>
</body>
</html>
