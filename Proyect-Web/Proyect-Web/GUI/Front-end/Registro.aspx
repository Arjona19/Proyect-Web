<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="Proyect_Web.GUI.Front_end.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <section id="contact">
      <div class="container">
          <br />
        <h2 class="text-center">Registrarme</h2>
        <hr class="star-primary">
        <div class="row">
          <div class="col-lg-8 mx-auto">
            <!-- To configure the contact form email address, go to mail/contact_me.php and update the email address in the PHP file on line 19. -->
            <!-- The form should work on most web servers, but if the form is not working you may need to configure your web server differently. -->
            <form name="sentMessage" id="contactForm" novalidate>
              <div class="control-group">
                <div class="form-group floating-label-form-group controls">
                  <label>Nombre</label>
                    <asp:TextBox ID="txtNombre" CssClass="form-control" runat="server" placeholder="Nombres/Compania"  data-validation-required-message="Please enter your name."></asp:TextBox>
                 
                  <p class="help-block text-danger"></p>
                </div>
              </div>
              <div class="control-group">
                <div class="form-group floating-label-form-group controls">
                  <label>Correo</label>
                    <asp:TextBox ID="txtCorreo" Cssclass="form-control" placeholder="Correo"  data-validation-required-message="Please enter your email address." runat="server"></asp:TextBox>
                
                  <p class="help-block text-danger"></p>
                </div>
              </div>
              <div class="control-group">
                <div class="form-group floating-label-form-group controls">
                  <label>Telefono</label>
                    <asp:TextBox ID="txtTelefono1" type="tel" Cssclass="form-control" placeholder="Telefono"  data-validation-required-message="Please enter your phone number." runat="server"></asp:TextBox>
                  
                  <p class="help-block text-danger"></p>
                </div>
              </div>
              <div class="control-group">
                <div class="form-group floating-label-form-group controls">
                  <label>Segundo Telefono(opcional)</label>
                    <asp:TextBox Cssclass="form-control" placeholder="Segundo Telefono(opcional)"  data-validation-required-message="Please enter a message." ID="txtTelefono" runat="server"></asp:TextBox>
               
                  <p class="help-block text-danger"></p>
                </div>
              </div>
                <div class="control-group">
                <div class="form-group floating-label-form-group controls">
                  <label>Sitio Web(opcional)</label>
                    <asp:TextBox Cssclass="form-control" placeholder="Sitio Web(opcional)"  data-validation-required-message="Please enter a message." ID="txtSitio" runat="server"></asp:TextBox>
               
                  <p class="help-block text-danger"></p>
                </div>
              </div>
                <div class="form-group floating-label-form-group controls">
                  <label>Nombre de Usuario</label>
                    <asp:TextBox ID="txtUsuario" CssClass="form-control" runat="server" placeholder="Nombre de Usuario"  data-validation-required-message="Please enter your name."></asp:TextBox>
                 
                  <p class="help-block text-danger"></p>
                </div>
                <div class="form-group floating-label-form-group controls">
                  <label>Contraseña</label>
                    <asp:TextBox ID="txtContraseña" CssClass="form-control" runat="server" placeholder="Contraseña"  data-validation-required-message="Please enter your name."></asp:TextBox>
                 
                  <p class="help-block text-danger"></p>
                </div>
              <br>
              <div id="success"></div>
              <div class="form-group">
                <asp:Button ID="btnEnviar" type="submit" Cssclass="btn btn-success btn-lg" runat="server" Text="Enviar" OnClick="btnEnviar_Click" />
                
              </div>
            </form>
          </div>
        </div>
      </div>
    </section>

</asp:Content>
