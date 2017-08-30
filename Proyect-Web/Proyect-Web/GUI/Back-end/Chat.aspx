<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/Back-end/Admin.Master" AutoEventWireup="true" CodeBehind="Chat.aspx.cs" Inherits="Proyect_Web.GUI.Back_end.Chat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js" integrity="sha512-K1qjQ+NcF2TYO/eI3M6v8EiNYZfA95pQumfvcVrTHtwQVDG+aHRqLi/ETn2uB+1JqwYqVG3LIvdm9lj6imS/pQ==" crossorigin="anonymous"></script>
       
       <!-- Estilos  bootstrap, chat-->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <script src="https://www.gstatic.com/firebasejs/4.3.0/firebase.js"></script>
<script>
    // Initialize Firebase
    var config = {
        apiKey: "AIzaSyCXn84Nr6-KRX89UBaaGHjM4J2VyeHnOeQ",
        authDomain: "chat-event-72540.firebaseapp.com",
        databaseURL: "https://chat-event-72540.firebaseio.com",
        projectId: "chat-event-72540",
        storageBucket: "chat-event-72540.appspot.com",
        messagingSenderId: "714451848918"
    };
    firebase.initializeApp(config);
    var TablaDeBaseDatos = firebase.databaseURL().ref('chat');
    TablaDeBaseDatos.on('value', function (snapshot) {
        $(".chat").html("");
        snapshot.forEach(function (e) {
            var objeto = e.val();
            if ((objeto.Mensajes != null) && (objeto.Nombre != null)) {
                $("#plantilla").clone().appendTo(".chat");
                $('.chat #plantilla').show(10);
                $('.chat #plantilla .Nombre').html(objeto.Nombre);
                $('.chat #plantilla .Mensaje').html(objeto.Nombre);
                $('.chat #plantilla .Tiempo').html(objeto.Nombre);
                $('.chat #plantilla .Nombre').attr("id", "");
            }
        }



        )
    });
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
           
       <div class="container">
    <div class="row">
        <!-- inicio de la caja de chat con bootstrap -->
        <div class="col-md-6 col-md-offset-3">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <span class="glyphicon glyphicon-comment"></span> Chat
                    <div class="btn-group pull-right">
                        <button type="button" class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown">
                            <span class="glyphicon glyphicon-chevron-down"></span>
                        </button>
                        <ul class="dropdown-menu slidedown">
                            <li><a href="http://develoteca.com"><span class="glyphicon glyphicon-refresh">
                            </span>Develoteca</a></li>
                            <li><a href="https://www.youtube.com/user/dimit28"><span class="glyphicon glyphicon-ok-sign">
                            </span>Youtube</a></li>
                            
                        </ul>
                    </div>
                </div>
                <div class="panel-body">
                    <ul class="chat"> </ul>
                </div>
                <div class="panel-footer">
                    <div class="input-group">
                        <input id="Mensaje" type="text" class="form-control input-sm" placeholder="Escribe un mensaje..." />
                        <span class="input-group-btn">
                            <button class="btn btn-warning btn-sm" id="btnEnviar" >
                                Enviar</button>
                        </span>
                    </div>
                </div>
            </div>
        </div>
        <!--  Fin de la caja de chat con bootstrap -->
    </div>
</div>
  <!-- template del item del chat (Oculto: para agarrar un clon y llenarlo e insertar en el chat)-->
       <li style="display:none" id="plantilla" class="left clearfix">
           <span class="chat-img pull-left">
             <img src="http://placehold.it/50/55C1E7/fff&text=U"class="img-circle" />
           </span>
            <div class="chat-body clearfix">
                    <div class="header">
                      <strong class="primary-font Nombre" >Jack Sparrow</strong> 
                        <small class="pull-right text-muted">
                        <span class="glyphicon glyphicon-asterisk Tiempo">
                        </span> </small>
                    </div>
                        <p class="Mensaje">
                               Mensaje
                        </p>
                </div>
        </li>
       
       
    <!-- Scripts de acción al botón -->
      <script>
       var Nombre= prompt("Nombre:");
          
          $('#btnEnviar').click(function () {
              var formatofecha = new Date();
              var d = formatofecha.getUTCDate();
              var m = formatofecha.getMonth() + 1;
              var y = formatofecha.getFullYear();
              var h = formatofecha.getHours();
              var min = formatofecha.getMinutes();

              Fecha = d + "/" + m + "/" + y + "/" + h + ":" + min;
              TablaDeBaseDatos.push({
                  Nombre: Nombre,
                  Mensajes: $("#Mensaje").val();
                  Fecha: Fecha
              });
		});
       </script>
</asp:Content>
