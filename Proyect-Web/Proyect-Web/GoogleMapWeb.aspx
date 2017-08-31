<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GoogleMapWeb.aspx.cs" Inherits="Proyect_Web.GoogleMapWeb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Google Map picker</title>
    <script src="MapPicker/locationpicker.jquery.js"></script>
 <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css"/>

<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
<script src="https://netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
        <script type="text/javascript" src='https://maps.google.com/maps/api/js?sensor=false&libraries=places&key=AIzaSyA6WF_JXzcarRVCNQR3y8MQ4mJ1AquUfzc'></script>

</head>
<body>
    <%--<form id="form1" runat="server">
        <div>
            <button type="button" data-toggle="modal" data-target="#ModalMap" class="btn btn-default">
<span class="glyphicon glyphicon-map-marker"></span> <span id="ubicacion">Seleccionar Ubicación:</span>
</button>
            <div class="modal fade" id="ModalMap" tabindex="-1" role="dialog" >
<style>.pac-container { z-index: 99999; }</style>
<div class="modal-dialog" role="document">
<div class="modal-content">
<div class="modal-body">
<div class="form-horizontal">
<div class="form-group">
<label class="col-sm-2 control-label">Ubicación:</label>
<div class="col-sm-9">
<input type="text" class="form-control" id="ModalMap-address" />
</div>
<div class="col-sm-1">
<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
</div>
</div>
<div id="ModalMapPreview" style="width: 100%; height: 400px;"></div>
<div class="clearfix">&nbsp;</div>
<div class="m-t-small">
<label class="p-r-small col-sm-1 control-label">Lat.:</label>
<div class="col-sm-3">
<input type="text" class="form-control" id="ModalMap-lat" />
</div>
<label class="p-r-small col-sm-2 control-label">Long.:</label>
 
<div class="col-sm-3">
<input type="text" class="form-control" id="ModalMap-lon" />
</div>
<div class="col-sm-3">
<button type="button" class="btn btn-primary btn-block" data-dismiss="modal" >Aceptar</button>
</div>
 
</div>
<div class="clearfix"></div>
<script>
$('#ModalMapPreview').locationpicker({
radius: 0,
location: {
latitude: 20.938297181414647,
longitude: -89.61501516379462
},
inputBinding: {
latitudeInput: $('#ModalMap-lat'),
longitudeInput: $('#ModalMap-lon'),
locationNameInput: $('#ModalMap-address')
},
enableAutocomplete: true,
onchanged: function (currentLocation, radius, isMarkerDropped) {
$('#ubicacion').html($('#ModalMap-address').val());
}
});
$('#ModalMap').on('shown.bs.modal', function () {
$('#ModalMapPreview').locationpicker('autosize');
});
</script>
</div>
</div>
</div>
</div>
        </div>
    </form>--%> 
    <form runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-4">
               
                <asp:Label ID="Label1" runat="server" Text="Label">Ubicaciones</asp:Label>
                
                <asp:TextBox ID="txtUbicaciones" CssClass="form-control" runat="server"></asp:TextBox>

                <div class="form-group">
                    <div id="ModalMapPreview" style="width:100%; height:300%"></div> 
                </div>
                <div class="form-group">
                    <asp:Label ID="Label2" runat="server" Text="Label">Lat:</asp:Label>
                    <asp:TextBox ID="txtLat" Text="" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:Label ID="Label3" runat="server" Text="Label">Long:</asp:Label>
                    <asp:TextBox ID="txtLong" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <asp:Button ID="btnAgregar" CssClass="btn btn-success" runat="server" UseSubmitBehavior="false" Text="Agregar" />
                 <asp:Button ID="btnModificar" CssClass="btn btn-warning" runat="server" UseSubmitBehavior="false" Text="Modificar" />
                 <asp:Button ID="btnEliminar" CssClass="btn btn-danger" runat="server" UseSubmitBehavior="false" Text="Eliminar" />
                 <asp:Button ID="btnLimpiar" CssClass="btn btn-default" runat="server" UseSubmitBehavior="false" Text="Limpiar" />
            </div>
            <div class="col-md-8">

            </div>

        </div>
    </div></form>
    <script>
        $('#ModalMapPreview').locationpicker({
            radius: 0,


            location: {
                latitude: 20.938297181414647,
                longitude: -89.61501516379462
            },
            inputBinding: {
                latitudeInput: $('#<%=txtLat.ClientID%>'),
                longitudeInput: $('#<%=txtLong.ClientID%>'),
                locationNameInput: $('#<%=txtUbicaciones.ClientID %>')
            },
            enableAutocomplete: true,
        });
        </script>
</body>
</html>
