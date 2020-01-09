<%@ Page Title="" Language="C#" MasterPageFile="~/MasterTercera.Master" AutoEventWireup="true" CodeBehind="Ciudad_Index.aspx.cs" Inherits="Tercera_Entity.Ciudad_Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


   <div class=" box box-solid-info box-info col-xs-6">>
     <div class="scrolling-table-containter" style=""overflow: auto;">
        <div class="widget">
            <br />

            <asp:Button ID="BtNuevoCiu" runat="server" Text="NUEVO" CssClass="btn btn-info" OnClick="BtNuevoCiu_Click"/>
              <hr class="box box-solid-info box-primary "/>
             <div  id="example1_wrapper" class="datatables_wrapper form-inline form">

                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>CODIGO CIUDAD</th>
                            <th>CIUDAD</th>
                            <th>EDITAR</th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:PlaceHolder ID="TablaCiudad" runat="server"></asp:PlaceHolder>
                    </tbody>

                </table>
            </div>

        </div>
     </div>

     </div>

    </div>
</asp:Content>
