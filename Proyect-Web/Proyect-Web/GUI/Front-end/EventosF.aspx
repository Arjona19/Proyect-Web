<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="EventosF.aspx.cs" Inherits="Proyect_Web.GUI.Front_end.EventosF" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div id="Carrusel" class="owl-carousel">
       
    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            <div class="Contenido">
                <img src="../../Img<%# DataBinder.Eval(Container.DataItem,"FotoEvento") %>" />
                <div class="Titulo"><strong><%# DataBinder.Eval(Container.DataItem,"Nombre") %></strong></div>
                 <div class="Descripcion"><%# DataBinder.Eval(Container.DataItem,"Descripcion") %></div>



            </div>


        </ItemTemplate>
    </asp:Repeater>
        </div>
    <script>
        $(document).ready(function () {
            $("#Carrusel").owlCarousel();
        });
    </script>

</asp:Content>
