<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VerEvento.aspx.cs" Inherits="Proyect_Web.GUI.Front_end.VerEvento" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Evento</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="col-md-12 card">
                <asp:Image ID="Image1" CssClass="img-thumbnail" runat="server" />
            </div>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-2">
                       
                       
                    </div>
                    <div class="col-md-8 card">
                         <h1 class="mt-5">
                            <asp:Label ID="Nombre" runat="server" Text="Label"></asp:Label>
                            <br />
                        </h1> 
                        
                           <p> <asp:Label ID="Descripcion" runat="server" Text="Label"></asp:Label></p>
                        <p>Costo del boleto:<asp:Label ID="Costo" runat="server" Text="Label"></asp:Label></p>
                        <p>Fecha de Inicio:<asp:Label ID="FechaInicio" runat="server" Text="Label"></asp:Label></p>
                        <p>Fecha que concluye:<asp:Label ID="FechaFin" runat="server" Text="Label"></asp:Label></p>
                        <p>Hora de inicio:<asp:Label ID="HoraInicio" runat="server" Text="Label"></asp:Label></p>
                        <p>Hora Final:<asp:Label ID="HoraFinal" runat="server" Text="Label"></asp:Label></p>
                        <p>Ubicacion:<asp:Label ID="Ubicacion" runat="server" Text="Label"></asp:Label></p>
                    </div>
                    <div class="col-md-2"></div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
