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
                        <button class="btn btn-sm btn-default"><i class="fa fa-search"></i></button>
                      </div>
                    </div>
                  </div>
                </div>
                 <asp:GridView ID="GridView1" runat="server" Cssclass="table table-bordered" Height="172px" Width="337px" OnPreRender="gvRender" OnRowCommand="Convertir">
        <Columns>
            <asp:ButtonField CommandName="btnConvert" Text="&lt;i class=&quot;btn btn-success&quot;&gt;Hacer Admin&lt;/i&gt;" />
        </Columns>
    </asp:GridView>
              </div>
</asp:Content>
