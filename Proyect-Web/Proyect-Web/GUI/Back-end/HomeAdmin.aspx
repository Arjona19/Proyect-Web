<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/Back-end/Admin.Master" AutoEventWireup="true" CodeBehind="HomeAdmin.aspx.cs" Inherits="Proyect_Web.GUI.Back_end.HomeAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <script src="https://code.jquery.com/jquery-3.2.1.js"></script>
    <style>
.fileContainer {
    overflow: hidden;
    position: relative; 
     width: 121px;
    margin-left: 1px;
    padding-left: 23px;
}

.fileContainer [type=file] {
    cursor: inherit;
    display: block;
    font-size: 999px;
    filter: alpha(opacity=0);
    min-height: 100%;
    min-width: 100%;
    opacity: 0;
    position: absolute;
    right: 0;
    text-align: right;
    top: 0;
  
}
 .auto-style1 {
             padding: 0 5px 6px;
             position: relative;
             width: 102%;
             float: left;
             clear: both;
             margin-top: 5px;
             left: -2px;
             top: 4px;
             height: 1501px;
         }
  .auto-style3 {
             left: 0px;
             top: 0px;
         }
  .group{
      margin-left:auto;
      margin-right:auto;
  }
  .boton{
      margin-left:3px;
  }
                                </style>
    <div class=" col-lg-8">
    <div class="box box-success ">
                <div class="box-header ">
                    <div class="col-md-6">
                  <h3 class="box-title">Edita tu perfil</h3>
                    </div>
                    <div class="col-md-6">
                    <asp:Button ID="btnModificar" CssClass="boton btn btn-block btn-success"  runat="server" Text="Modificar" OnClick="btnModificar_Click" />
                       
                    
                          
                     

                    </div>
                </div>
                <div class="box-body ">
                    <asp:TextBox ID="txtNombre" CssClass="form-control input-lg" placeholder="Nombre"  runat="server"></asp:TextBox>
                  <br>
                     <asp:TextBox ID="txtCorreo" CssClass="form-control input-lg" placeholder="Correo" runat="server"></asp:TextBox>
                  <br>
                     <asp:TextBox ID="txtCorreo2" CssClass="form-control input-lg" placeholder="Segundo correo(opcional)" runat="server"></asp:TextBox>
                  <br>
                     <asp:TextBox ID="txtCorreo3" CssClass="form-control input-lg" placeholder="Tercer correo(opcional)" runat="server"></asp:TextBox>
                  <br>
                     <asp:TextBox ID="txtSitioWeb" CssClass="form-control input-lg" placeholder="Sitio Web" runat="server"></asp:TextBox>
                  <br>
                     <asp:TextBox ID="txtTelefono" CssClass="form-control input-lg" placeholder="Telefono" runat="server"></asp:TextBox>
                  <br>
                     <asp:TextBox ID="txtUsuario" CssClass="form-control input-lg" placeholder="Usuario" runat="server"></asp:TextBox>
                  <br>
                     <asp:TextBox ID="txtContraseña" CssClass="form-control input-lg" placeholder="Contraseña" runat="server"></asp:TextBox>
                  <br>
                   <asp:Button ID="btnLimpiar" CssClass="boton btn btn-block btn-default" runat="server" Text="Limpiar" OnClick="btnLimpiar_Click" />
                  
                </div><!-- /.box-body -->
              </div>
</div>
    <div class="col-lg-4">
        <div class="box box-success">
             <h3 class="box-title">Foto de perfil</h3>
                                <div class="form-group">
                                    <div class="col-md-3"></div>
                                    <div class="col-md-6">
                                    <asp:Image ID="Image1" Cssclass="img-circle group" ImageUrl="../../Img/fr-05.jpg"   style="width: 128px; height: 147px" runat="server" />
                              
                                    <br />
                                    <br />
                                    <label class="fileContainer btn btn-success">Seleccionar .. 
                                <asp:FileUpload ID="fupfoto" runat="server" CssClass="inputfile" Width="100px" style="right: 0; top: 0" />
                              </label>
                                    </div>
                                    <div class="col-md-3"></div>
                                    <br />
                               
                                    <script>
                                   var inputs = document.querySelectorAll('.inputfile');
                                   Array.prototype.forEach.call(inputs, function (input) {
                                       var label = input.nextElementSibling,
                                           labelVal = label.innerHTML;

                                       input.addEventListener('change', function (e) {
                                           var fileName = '';
                                           if (this.files && this.files.length > 1)
                                               fileName = (this.getAttribute('data-multiple-caption') || '').replace('{count}', this.files.length);
                                           else
                                               fileName = e.target.value.split('\\').pop();

                                           if (fileName)
                                               label.querySelector('span').innerHTML = fileName;
                                           else
                                               label.innerHTML = labelVal;
                                       });
                                   });

                               </script>
                                    <script>

                                   function readURL(input) {
                                       if (input.files && input.files[0]) {
                                           var reader = new FileReader();

                                           reader.onload = function (e) {
                                               // IMagen destino 
                                               $('#<%=Image1.ClientID%>').attr('src', e.target.result);
                                       }

                                       reader.readAsDataURL(input.files[0]);
                                       }
                                   }

                                   // FileUpload Imagen
                                   $("#<%=fupfoto.ClientID%>").change(function () {
                                   readURL(this);
                               });

    </script>
                               
                   </div>
            <div class="clearfix"></div>
                         </div>     
                          
                          
                             </div>
    
</asp:Content>
