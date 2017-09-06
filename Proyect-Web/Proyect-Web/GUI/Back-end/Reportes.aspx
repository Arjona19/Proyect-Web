<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/Back-end/Admin.Master" AutoEventWireup="true" CodeBehind="Reportes.aspx.cs" Inherits="Proyect_Web.GUI.Back_end.Reportes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
         <div class="box box-success ">
                             <asp:Button ID="BackUp" CssClass="btn btn-block btn-success btn-lg" runat="server" Text="Copia de Seguridad" OnClick="BackUp_Click"  />
</div>
        </div>
      <script src="js/jspdf.debug.js"></script>
    <script src="js/jquery-2.1.4.min.js"></script>
    <div id="Reporte1" class="box">
                <div class="box-header">
                  <h3 class="box-title">Usuarios</h3> <asp:Label ID="Fecha" runat="server" Text="Label"></asp:Label>
                  <div class="box-tools">
                    <div class="input-group">
                      <div class="input-group-btn">
                        
                        <asp:Button ID="Button1" CssClass="btn btn-facebook" runat="server" Text="Descargar Reporte" OnClick="Button1_Click" />
                      </div>
                    </div>
                  </div>
                  
                </div>
                 <asp:GridView ID="GridView1" runat="server" Cssclass="table table-bordered" Height="172px" Width="333px" AutoGenerateColumns="False" >
       <Columns>
           <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
            <asp:BoundField DataField="Correo" HeaderText="Correo" SortExpression="Correo" />
            <asp:BoundField DataField="SitioWeb" HeaderText="Sitio Web" SortExpression="SitioWeb" />
            <asp:BoundField DataField="Usuario" HeaderText="Usuario" SortExpression="Usuario" />
            <asp:ImageField DataImageUrlField="Fotografia" DataImageUrlFormatString="../../Img{0}" HeaderText="Fotografia">
                <ControlStyle Height="200px" Width="200px" />
            </asp:ImageField>
            <asp:BoundField DataField="Correo1" HeaderText="Segundo Correo" SortExpression="Correo1" />
            <asp:BoundField DataField="Correo2" HeaderText="Tercer Correo" SortExpression="Correo2" />
            <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
       </Columns>
    </asp:GridView>
              </div>
    <div id="Reporte2" class="box">
                <div class="box-header">
                  <h3 class="box-title">Eventos Rechazados</h3>  <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                  <div class="box-tools">
                    <div class="input-group">
                      <div class="input-group-btn">
                        <asp:Button ID="Button2" CssClass="btn btn-facebook" runat="server" Text="Descargar Reporte" OnClick="Button2_Click" />
                        
                      </div>
                    </div>
                  </div>
                </div>
                 <asp:GridView ID="GridView2" runat="server" Cssclass="table table-bordered" Height="172px" Width="333px" AutoGenerateColumns="False" >
          <Columns>
            <asp:BoundField DataField="IDEvento" HeaderText="ID" SortExpression="IDEvento">
            
            </asp:BoundField>
            <asp:ImageField DataImageUrlField="FotoEvento" DataImageUrlFormatString="~/Img/{0}" HeaderText="Imagen">
                <ControlStyle CssClass="img-thumnai" Height="100px" Width="200px" />
            </asp:ImageField>
            <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
            <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
            <asp:BoundField DataField="CostoEntrada" HeaderText="Costo Entrada" SortExpression="CostoEntrada" />
            <asp:BoundField DataField="HoraInicio" HeaderText="Empieza" SortExpression="HoraInicio" />
            <asp:BoundField DataField="HoraFin" HeaderText="Termina" SortExpression="HoraFin" />
            <asp:BoundField DataField="Fecha Fin" HeaderText="Fecha de Inicio" SortExpression="Fecha Fin" />
            <asp:BoundField DataField="Fecha Fin" HeaderText="Fecha de Fin" SortExpression="Fecha Fin" />
            <asp:BoundField DataField="IDUsuario" HeaderText="Usuario" SortExpression="IDUsuario" />
            <asp:BoundField DataField="Ubicacion" HeaderText="Ubicacion" SortExpression="Ubicacion" />
       </Columns>
    </asp:GridView>
              </div>
    <div id="Reporte3" class="box">
                <div class="box-header">
                  <h3 class="box-title">Eventos Aprobados</h3>  <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                  <div class="box-tools">
                    <div class="input-group">
                      
                      <div class="input-group-btn">
                          <input type="button" id="Descargar" runat="server" class="btn btn-facebook" value="Descargar Reporte" onclick="DescargarPDF('Reporte3', 'Reporte de Eventos Rechazados')" />
                        
                      </div>
                    </div>
                  </div>
                </div>
                 <asp:GridView ID="GridView3" runat="server" Cssclass="table table-bordered" Height="172px" Width="333px" AutoGenerateColumns="False" >
          <Columns>
            <asp:BoundField DataField="IDEvento" HeaderText="ID" SortExpression="IDEvento">
            
            </asp:BoundField>
            <asp:ImageField DataImageUrlField="FotoEvento" DataImageUrlFormatString="~/Img/{0}" HeaderText="Imagen">
                <ControlStyle CssClass="img-thumnai" Height="100px" Width="200px" />
            </asp:ImageField>
            <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
            <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
            <asp:BoundField DataField="CostoEntrada" HeaderText="Costo Entrada" SortExpression="CostoEntrada" />
            <asp:BoundField DataField="HoraInicio" HeaderText="Empieza" SortExpression="HoraInicio" />
            <asp:BoundField DataField="HoraFin" HeaderText="Termina" SortExpression="HoraFin" />
            <asp:BoundField DataField="Fecha Fin" HeaderText="Fecha de Inicio" SortExpression="Fecha Fin" />
            <asp:BoundField DataField="Fecha Fin" HeaderText="Fecha de Fin" SortExpression="Fecha Fin" />
            <asp:BoundField DataField="IDUsuario" HeaderText="Usuario" SortExpression="IDUsuario" />
            <asp:BoundField DataField="Ubicacion" HeaderText="Ubicacion" SortExpression="Ubicacion" />
       </Columns>
    </asp:GridView>
              </div>
    
    <script>
           function DescargarPDF(ContenidoID, nombre) {

               var pdf = new jsPDF('p', 'pt', 'letter');

               html = $('#' + ContenidoID).html();

               specialElementHandlers = {};

               margins = { top: 10, bottom: 20, left: 20, width: 1200 };

               pdf.fromHTML(html, margins.left, margins.top, { 'width': margins.width }, function (dispose) { pdf.save(nombre + '.pdf'); }, margins);

           }


    </script>
</asp:Content>
