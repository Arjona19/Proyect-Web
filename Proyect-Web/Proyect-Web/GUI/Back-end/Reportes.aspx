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
                          <input type="button" class="btn btn-facebook" value="Descargar Reporte" onclick="DescargarPDF('Reporte1','Reporte de Usuarios')" />
                        
                      </div>
                    </div>
                  </div>
                  
                </div>
                 <asp:GridView ID="GridView1" runat="server" Cssclass="table table-bordered" Height="172px" Width="333px" >
       
    </asp:GridView>
              </div>
    <div id="Reporte2" class="box">
                <div class="box-header">
                  <h3 class="box-title">Eventos Aprobados</h3>  <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                  <div class="box-tools">
                    <div class="input-group">
                      <div class="input-group-btn">
                          <input type="button" class="btn btn-facebook" value="Descargar Reporte" onclick="DescargarPDF('Reporte2', 'Reporte de Eventos Aprobados')" />
                        
                      </div>
                    </div>
                  </div>
                </div>
                 <asp:GridView ID="GridView2" runat="server" Cssclass="table table-bordered" Height="172px" Width="333px" >
       
    </asp:GridView>
              </div>
    <div id="Reporte3" class="box">
                <div class="box-header">
                  <h3 class="box-title">Eventos Rechazados</h3>  <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                  <div class="box-tools">
                    <div class="input-group">
                      
                      <div class="input-group-btn">
                          <input type="button" class="btn btn-facebook " value="Descargar Reporte" onclick="DescargarPDF('Reporte3', 'Reporte de Eventos Rechazados')" />
                        
                      </div>
                    </div>
                  </div>
                </div>
                 <asp:GridView ID="GridView3" runat="server" Cssclass="table table-bordered" Height="172px" Width="333px" >
       
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
