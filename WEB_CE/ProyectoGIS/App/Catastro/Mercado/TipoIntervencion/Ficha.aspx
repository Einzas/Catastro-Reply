<%@ Page Title="Gestión de Tipos de Intervención" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Ficha.aspx.cs" Inherits="ProyectoGIS.App.Catastro.TipoIntervencion.Ficha" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div id="tabla">
        <div class="table-responsive my-custom-scrollbar table-wrapper-scroll-y">
            <asp:GridView ID="MiTabla" class="table table-sm table-striped table-hover table-bordered table-dark text-center align-middle" runat="server" AutoGenerateColumns="false" >
                <Columns>
                    <asp:BoundField DataField="tipo_intervencion_tecnica_establecimiento_id" HeaderText="Id" />
                    <asp:BoundField DataField="tipo_intervencion_tecnica_establecimiento_nombre" HeaderText="Nombre" />
                    <asp:BoundField DataField="tipo_intervencion_tecnica_establecimiento_detalle" HeaderText="Detalle" />
                    <asp:BoundField DataField="tipo_intervencion_tecnica_establecimiento_estado" HeaderText="Estado" />
                    <asp:TemplateField HeaderText="Acciones">
                        <ItemTemplate>
                             <asp:Button ID="btnEditar" runat="server" Text="Editar" CommandName="Editar" CssClass="btn btn-primary" />
                            <asp:LinkButton ID="btnEliminar" runat="server" Text="Eliminar" CssClass="btn btn-danger" CommandName="Eliminar" CommandArgument='<%# Eval("tipo_intervencion_tecnica_establecimiento_id") %>' OnClientClick="return confirm('¿Está seguro que desea eliminar este cantón?');" OnClick="btnEliminar_Click"  />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>

               
        </div>
         <div class="text-end pt-4">
            <a class="btn btn-success end text-center" href="./Add"
                data-bs-target="#exampleModal">
                Agregar Tipo de Intervencion
            </a>
        </div>
    </div>
</asp:Content>
