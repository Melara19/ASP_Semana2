<%@ Page Title="" Language="C#" MasterPageFile="~/MasterTercera.Master" AutoEventWireup="true" CodeBehind="Depto_Index.aspx.cs" Inherits="Tercera_Entity.Depto_Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    
    
  <div class=" box box-solid-info box-info col-xs-6">
    <div class="scrolling-table-containter" style=""overflow: auto;">
        <div class="widget">
            <br />
            
            <asp:Button ID="BtnNuevo" runat="server" Text="NUEVO" CssClass="btn btn-info" OnClick="BtnNuevo_Click" />
            <hr class="box box-solid-info box-primary "/>
            <div  id="example1_wrapper" class="datatables_wrapper form-inline form">
            
                <table class="table table-hover <%--box box-solid box-info with-border--%>">
                    <thead>
                        <tr>
                            <th>CODIGO DEPARTAMENTO</th>
                            <th>DEPARTAMENTO</th>
                            <th>EDITAR</th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:PlaceHolder ID="TablaDepto"  runat="server"></asp:PlaceHolder>
                    </tbody>

                </table>
            </div>
            </div>
        </div>

    </div>
        

</asp:Content>
