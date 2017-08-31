<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="vermas.aspx.cs" Inherits="Proyect_Web.vermas" EnableEventValidation="true"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <p>
        
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!-- Bootstrap 3.3.4 -->
    <link href="../../BackAdmin/bootstrap.min.css" rel="stylesheet" />
   
    <!-- Font Awesome Icons -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Ionicons -->
    <link href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" rel="stylesheet" type="text/css" />
    <!-- Theme style -->
    <link href="../../BackAdmin/AdminLTE.min.css" rel="stylesheet" />
    
    <!-- AdminLTE Skins. Choose a skin from the css/skins 
         folder instead of downloading all of them to reduce the load. -->
    <link href="../../BackAdmin/_all-skins.min.css" rel="stylesheet" />


    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
   <asp:DataList ID="DataList1" runat="server"></asp:DataList>
    <asp:Label ID="Label1" Cssclass="Nombre" runat="server" Text='Bray'></asp:Label>


       <!-- jQuery 2.1.4 -->
        <script src="../../BackAdmin/jQuery-2.1.4.min.js"></script>
    
    <!-- Bootstrap 3.3.2 JS -->
        <script src="../../BackAdmin/bootstrap.min.js"></script>
    
    <!-- SlimScroll -->
        <script src="../../BackAdmin/jquery.slimscroll.min.js"></script>
    
    <!-- FastClick -->
        <script src="../../BackAdmin/fastclick.min.js"></script>
 
    <!-- AdminLTE App -->
        <script src="../../BackAdmin/app.min.js"></script>
  
    
    <!-- Demo -->
        <script src="../../BackAdmin/demo.js"></script>
</asp:Content>
