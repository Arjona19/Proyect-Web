<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/Back-end/Admin.Master" AutoEventWireup="true" CodeBehind="Control.aspx.cs" Inherits="Proyect_Web.GUI.Back_end.Control" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div class="box">
                <div class="box-header">
                  <h3 class="box-title">Eventos por aprobar</h3>
                  <div class="box-tools">
                    <div class="input-group">
                      <input name="table_search" class="form-control input-sm pull-right" style="width: 150px;" type="text" placeholder="Search">
                      <div class="input-group-btn">
                        <button class="btn btn-sm btn-default"><i class="fa fa-search"></i></button>
                      </div>
                    </div>
                  </div>
                </div>
                 <asp:GridView ID="GridView1" runat="server" Cssclass="table table-bordered" Height="172px" Width="337px" OnPreRender="gvRender" OnRowCommand="Seleccionar" AutoGenerateColumns="False">
        <Columns>
            <asp:ButtonField CommandName="btnAprobar" Text="&lt;i class=&quot;btn btn-success&quot;&gt;Aprobar&lt;/i&gt;" />
            <asp:BoundField DataField="IDEvento" HeaderText="ID" SortExpression="IDEvento">
            
            </asp:BoundField>
            <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
            <asp:BoundField DataField="CostoEntrada" HeaderText="Costo Entrada" SortExpression="CostoEntrada" />
            <asp:ImageField DataImageUrlField="FotoEvento" DataImageUrlFormatString="~/Img/{0}" HeaderText="Imagen">
                <ControlStyle CssClass="img-thumnai" Height="100px" Width="200px" />
            </asp:ImageField>
        </Columns>
    </asp:GridView>
              </div>
    <div class="box">
                <div class="box-header">
                  <h3 class="box-title">Eventos Aprobados</h3>
                  <div class="box-tools">
                    <div class="input-group">
                      <input name="table_search" class="form-control input-sm pull-right" style="width: 150px;" type="text" placeholder="Search">
                      <div class="input-group-btn">
                        <button class="btn btn-sm btn-default"><i class="fa fa-search"></i></button>
                      </div>
                    </div>
                  </div>
                </div>
                 <asp:GridView ID="GridView2" runat="server" Cssclass="table table-bordered" Height="172px" Width="333px" OnPreRender="gvRender" OnRowCommand="Rechazar" AutoGenerateColumns="False">
        <Columns>
            <asp:ButtonField CommandName="btnRechazar" Text="&lt;i class=&quot;btn btn-danger&quot;&gt;Rechazar&lt;/i&gt;" />
             <asp:BoundField DataField="IDEvento" HeaderText="ID" SortExpression="IDEvento">
            
            </asp:BoundField>
            <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
            <asp:BoundField DataField="CostoEntrada" HeaderText="Costo Entrada" SortExpression="CostoEntrada" />
            <asp:ImageField DataImageUrlField="FotoEvento" DataImageUrlFormatString="~/Img/{0}" HeaderText="Imagen">
                <ControlStyle CssClass="img-thumnai" Height="100px" Width="200px" />
            </asp:ImageField>
        </Columns>
    </asp:GridView>
              </div>
    


   
  
    
    


</asp:Content>
