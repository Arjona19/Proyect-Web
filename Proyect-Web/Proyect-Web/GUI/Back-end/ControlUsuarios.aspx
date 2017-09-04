<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/Back-end/Admin.Master" AutoEventWireup="true" CodeBehind="ControlUsuarios.aspx.cs" Inherits="Proyect_Web.GUI.Back_end.ControlUsuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="box">
                <div class="box-header">
                  <h3 class="box-title">Usuarios Registrados</h3>
                  <div class="box-tools">
                    <div class="input-group">
                      <input name="table_search" class="form-control input-sm pull-right" style="width: 150px;" type="text" placeholder="Search">
                      <div class="input-group-btn">
                      </div>
                    </div>
                  </div>
                </div>
                 <asp:GridView ID="GridView1" runat="server" Cssclass="table table-bordered" Height="172px" Width="337px" OnPreRender="gvRender" OnRowCommand="Convertir" AutoGenerateColumns="False">
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
</asp:Content>
