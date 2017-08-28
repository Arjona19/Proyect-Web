﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="EventosF.aspx.cs" Inherits="Proyect_Web.GUI.Front_end.EventosF" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  <img src="../../Img/fondo.jpg"  />
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <style>
         body{background-color:#dadada;}
         .Contenido{
             margin:16px;
             top:5px;
             left:5px;
             right:5px;
             bottom:5px;
             background:#fff;
             overflow:hidden;
             -moz-box-shadow: 1px 1px 2px rgba(0,0,0,0.2);
             -webkit-box-shadow: 1px 1px 2px rgba(0,0,0,0.2);
             box-shadow: 1px 1px 2px rgba(0,0,0,0.2);
             padding-top: 19px;
             border: 1px solid #ddd;
         }
         .Imagenes{height:180px;}
         .Nombre{ 
             font-family: 'Coustard', sans-serif;
             text-transform: uppercase;
             color: #000;
             margin-bottom: 20px;
             font-size: 19px;
             text-align: center;
             text-shadow: 0px 1px 1px #e4ebe9;
         }
     </style>
    <div class="col-lg-12">
        <div class="form-panel">
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="3">
         <ItemTemplate>
             <div class="Contenido" style="text-align:center;">

             <asp:Image ID="Image1" cssclass="Imagenes" runat="server" Height="200px" ImageUrl='<%# "../../Img"+Eval("FotoEvento") %>' Width="181px" />
             <br />
             <br />
             <asp:Label ID="Label1" cssclass="Nombre" runat="server" Text='<%# Eval("Nombre") %>'></asp:Label>
             <br />
             <br />

             <asp:Label ID="Label2" cssclass="" runat="server" Text="Label"></asp:Label>
             </div>
          </ItemTemplate>
    </asp:DataList>
    <div class="clearfix"></div>
         </div> 

    </div>

</asp:Content>



   <%-- <div id="Carrusel" class="owl-carousel">--%>
       
   <%-- <asp:Repeater ID="Repeater1" runat="server">
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
    </script>--%>

