<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Album.aspx.cs" Inherits="Spotify.Album" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="Styles.css" />
</head>
<body>
    <form id="form1" runat="server">        
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server"></asp:UpdatePanel>       
    <div>
    
        <asp:Image ID="ImageAlbum" runat="server" Height="300px" ImageAlign="Top" Width="300px" />        
        <script type="text/javascript">
            document.getElementById('ImageAlbum').innerHTML = localStorage.getItem('AlbumImage');
        </script>
        <br />
        Album:
        <asp:Label ID="lbl_Album" runat="server"></asp:Label>     
        <script type="text/javascript">
            document.getElementById('lbl_Album').innerHTML = localStorage.getItem('AlbumName');
            var pageId = '<%=  Page.ClientID %>';
            //__doPostBack(pageId, localStorage.getItem('AlbumName'));
            <%Page.LoadComplete += new EventHandler(Page_LoadComplete); %>
        </script>
        <br />
        Año:
        <asp:Label ID="lbl_Año" runat="server"></asp:Label>        
        <script type="text/javascript">
            document.getElementById('lbl_Año').innerHTML = localStorage.getItem('AlbumAño');
        </script>
        <br />
        Artista:
        <asp:Label ID="lbl_Artista" runat="server"></asp:Label>        
        <script type="text/javascript">
            document.getElementById('lbl_Artista').innerHTML = localStorage.getItem('AlbumArtista');
        </script>
        <br />
        Rank:&nbsp;
        <asp:Label ID="lbl_Rank" runat="server"></asp:Label>        
        <script type="text/javascript">
            document.getElementById('lbl_Rank').innerHTML = localStorage.getItem('AlbumRank');
        </script>
        <contenttemplate>
            <cc1:Rating ID="Rating2" runat="server"
                StarCssClass="starRating"
                FilledStarCssClass="FilledStars"
                EmptyStarCssClass="EmptyStars"
                WaitingStarCssClass="HalfStars"
                MaxRating="5"
            ></cc1:Rating>
        <asp:Button ID="btn_Votar" runat="server" Text="Votar" OnClick="btn_Votar_Click" />
        <br />
        </contenttemplate>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="Artista" HeaderText="Artista" SortExpression="Artista" />
                <asp:BoundField DataField="Cancion" HeaderText="Cancion" SortExpression="Cancion" />
                <asp:BoundField DataField="Genero" HeaderText="Genero" SortExpression="Genero" />
                <asp:BoundField DataField="Compositor" HeaderText="Compositor" SortExpression="Compositor" />
                <asp:BoundField DataField="Colaboradores" HeaderText="Colaboradores" SortExpression="Colaboradores" />
                <asp:TemplateField HeaderText="Audio">
                    <ItemTemplate>
                        <audio src='<%#Eval("Link") %>'  controls>
                        Your browser does not support the audio element.
                        </audio>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    
      
    </div>
    </form>
</body>
</html>
