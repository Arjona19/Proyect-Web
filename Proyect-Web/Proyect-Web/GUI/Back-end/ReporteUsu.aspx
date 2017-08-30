<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/Back-end/Admin.Master" AutoEventWireup="true" CodeBehind="ReporteUsu.aspx.cs" Inherits="Proyect_Web.ReporteUsu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="js/jspdf.debug.js"></script>
    <script src="js/jquery-2.1.4.min.js"></script>
    <div id="Reporte">
       
        
        <asp:GridView ID="GridView1" runat="server"></asp:GridView>

</div>
    <input type="button" class="btn btn-facebook" onclick="DescargarPDF('Reporte','ReporteASP')" value="Decargar Reporte"/>

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
