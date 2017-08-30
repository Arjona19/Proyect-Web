<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="EventosF.aspx.cs" Inherits="Proyect_Web.GUI.Front_end.EventosF"   %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <br />
    <br />
   <br />
    <br />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"/>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
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
             margin-left:auto;
             margin-right:auto;
         }
         .Imagenes{height:180px;}
         .Nombre{ 
             font-family: 'Coustard', sans-serif;
             text-transform: uppercase;
             color: #000;
             margin-bottom: 20px;
             font-size: 12px;
             text-align: center;
             text-shadow: 0px 1px 1px #e4ebe9;
         }
         .centro{
             margin-left:auto;
             margin-right:auto;
         }
         
     </style>
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="../../Img/Conciertos.jpg" alt="First slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="../../Img/franco.jpg" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="../../Img/Teatro.jpg" alt="Third slide">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
        <div class="clearfix"></div>
</div>
 
	
    <div class="content-fluid">

         <h2 class="text-center">Eventos</h2>
        <hr class="star-primary">

    	<form onsubmit="submitFn(this, event);">
            <div class="search-wrapper">
                <div class="input-holder">
                    <input type="text" id="search" class="search-input" placeholder="Busca tu evento" />
                    <button class="search-icon" onclick="searchToggle(this, event);"><span></span></button>
                </div>
                <span class="close" onclick="searchToggle(this, event);"></span>
                <div class="result-container">

                </div>
            </div>
        </form>

	

           <link href="../../Search/Search.css" rel="stylesheet" />
    <script src="../../Search/Search.js"></script>
	<script src="http://libs.useso.com/js/jquery/1.11.0/jquery.min.js" type="text/javascript"></script>
	<script>window.jQuery || document.write('<script src="js/jquery-1.11.0.min.js"><\/script>')</script>
        <div class="centro">
            <asp:DataList ID="DataList1" CssClass="centro" runat="server" RepeatColumns="4" HorizontalAlign="Center">
                <ItemTemplate>
                    <div class="Contenido" style="text-align:center;">

             <asp:Image ID="Image1" Cssclass="Imagenes img-thumbnail" runat="server" Height="200px" ImageUrl='<%# "../../Img"+Eval("FotoEvento") %>' Width="181px" />
             <br />
             <br />
                        
             <h4><asp:Label ID="Label1" Cssclass="Nombre" runat="server" Text='<%#Eval("Nombre") %>'></asp:Label></h4>
                                    <br />
             <br />
                        <a class="btn btn-info" href="../../vermas.aspx?cultur=<%# Eval("IDEvento") %>">Ver Mas </a>
    
             <%-- <a href="../../vermas.aspx?cultur='<%#Eval("IDEvento") %>'"> Mas</a>--%>


             
             </div>
                </ItemTemplate>
            </asp:DataList>
    <div class="clearfix"></div>
         </div> 

    </div>
     
</asp:Content>



   


