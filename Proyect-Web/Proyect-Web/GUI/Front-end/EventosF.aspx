<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="EventosF.aspx.cs" Inherits="Proyect_Web.GUI.Front_end.EventosF" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <asp:DataList ID="DataList1" runat="server">
        <ItemTemplate>
            <asp:Image ID="Image1" runat="server" Height="98px" Width="135px" />
        </ItemTemplate>
    </asp:DataList>
    <p>
    </p>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <%--<%--<script src="../../Carrusel/jquery-1.10.2.min.js"></script>
    <script src="../../Carrusel/jquery.mousewheel-3.0.6.min.js"></script>
    <script src="../../Carrusel/jquery.rondell.min.js"></script>
    <script src="../../Carrusel/modernizr-2.0.6.min.js"></script>
    <link href="../../Carrusel/jquery.rondell.css" rel="stylesheet" />
       
             <div id="rondellCarousel">
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <a href="<%# Container.DataItem %>">
                    <img src="../../Img<%# DataBinder.Eval(Container.DataItem,"FotoEvento") %>" />
                </a>
            </ItemTemplate>
        </asp:Repeater>
    </div>
    <%--<asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            <div class="Contenido">
                <img src="../../Img<%# DataBinder.Eval(Container.DataItem,"FotoEvento") %>" />
                <div class="Titulo"><strong><%# DataBinder.Eval(Container.DataItem,"Nombre") %></strong></div>
                 <div class="Descripcion"><%# DataBinder.Eval(Container.DataItem,"Descripcion") %></div>



            </div>
            

        </ItemTemplate>
    </asp:Repeater>
        </div>
    <script type="text/javascript">
        $(function () {
            $("#rondellCarousel").rondell({
                preset: "carousel",
            });
        });
    </script>--%>





</asp:Content>
