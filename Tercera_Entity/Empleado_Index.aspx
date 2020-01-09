<%@ Page Title="" Language="C#" MasterPageFile="~/MasterTercera.Master" AutoEventWireup="true" CodeBehind="Empleado_Index.aspx.cs" Inherits="Tercera_Entity.Empleado_Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="col-xs-12 box box-solid-info box-info ">
    <div class="scrolling-table-containter" style=""overflow: auto;">
        <div class="widget">
            <br />
            <%--<asp:Button ID="BtnNuevoEmp" runat="server" Text="NUEVO" CssClass="btn btn-info" OnClick="BtnNuevoEmp_Click" />--%>
            <asp:Button ID="BtNuevoEmp" runat="server" Text="Nuevo"  CssClass="btn btn-info" OnClick="BtNuevoEmp_Click"/>
              <hr class="box box-solid-info box-primary "/>
             <div  id="example1_wrapper" class="datatables_wrapper form-inline form">

                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>CODIGO EMPLEADO</th>
                            <th>NOMBRE</th>
                            <th>APELLIDO</th>
                            <th>SEXO</th>
                            <th>EDAD</th>
                            <th>EDITAR</th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:PlaceHolder ID="TablaEmp" runat="server"></asp:PlaceHolder>
                    </tbody>

                </table>
            </div>
        </div>

        </div>

    </div>
</asp:Content>
