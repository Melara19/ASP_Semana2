<%@ Page Title="" Language="C#" MasterPageFile="~/MasterTercera.Master" AutoEventWireup="true" CodeBehind="Dept_Admin.aspx.cs" Inherits="Tercera_Entity.Dept_Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


        <div class="col-xs-6">
        <div class="box box box-solid-info box-info">
            <div class="box-body">
                <div class="form-horizontal">

                    <div class="form-group" id="Group_cod" runat="server">
                        <div class="col-md-8">
                             <asp:Label ID="Label1" runat="server" Text=""> DEPARTAMENTO</asp:Label>
                             <input runat="server" type="text" id="txtNombre" class="form-control" placeholder="Nombre Del Departamento" required="required" autofocus="autofocus">
                        </div>
                    </div>

                    <div class="form-group" id="Div2" runat="server">
                         <div class="col-md-8">
                            <asp:Button class="btn btn-info " ID="btnGuardar" runat="server" Text="Guardar" OnClick="btnGuardar_Click" />
                            <asp:Button class="btn btn-primary" ID="btnEditar" runat="server" Text="Editar" OnClick="btnEditar_Click" />
                         </div>
                    </div>

                </div>
           </div>
        </div>
        </div>



    <%--<div class="container">
    <div class="card card-register mx-auto mt-5">
      <div class="card-header">
          <asp:Label ID="Encabezado" runat="server" Text=""></asp:Label>
          <asp:Label ID="IdUs" Visible="false" runat="server" Text=""></asp:Label>
      </div>
      <div class="card-body">
          <div class="form-group">
            <div class="form-row">
              <div class="col-md-6">  
                  
                  <input runat="server" type="text" id="txtNombre" class="form-control" placeholder="Nombre Del Departamento" required="required" autofocus="autofocus">
              </div>
          </div>
          </div>
          <asp:Label ID="Message" runat="server" Font-Size="Medium" ForeColor="Red"></asp:Label>
          <hr />
          <asp:Button class="btn btn-primary btn-block" ID="btnGuardar" runat="server" Text="Guardar" OnClick="btnGuardar_Click" />
          <asp:Button class="btn btn-primary btn-block" ID="btnEditar" runat="server" Text="Editar" />
      </div>
    </div>
  </div>--%>




</asp:Content>
