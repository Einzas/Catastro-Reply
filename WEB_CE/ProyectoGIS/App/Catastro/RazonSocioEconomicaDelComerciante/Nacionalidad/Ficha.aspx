﻿<%@ Page Title="Gestión de Nacionalidades" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Ficha.aspx.cs" Inherits="ProyectoGIS.App.Catastro.RazonSocioEconomicaDelComerciante.Nacionalidad.Ficha" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div id="tabla">
        <div class="table-responsive my-custom-scrollbar table-wrapper-scroll-y">
            <asp:GridView ID="MiTabla" class="table table-sm table-striped table-hover table-bordered table-dark text-center align-middle" runat="server" AutoGenerateColumns="false" >
                <Columns>
                    <asp:BoundField DataField="nacionalidad_id" HeaderText="Id" SortExpression="Id" />
                    <asp:BoundField DataField="nacionalidad_codigo" HeaderText="Codigo" SortExpression="Codigo" />
                    <asp:BoundField DataField="nacionalidad_nombre" HeaderText="Nombre" SortExpression="Nombre" />
                    <asp:BoundField DataField="nacionalidad_detalle" HeaderText="Detalle" SortExpression="Detalle" />
                    <asp:BoundField DataField="nacionalidad_estado" HeaderText="Estado" SortExpression="Estado" />
                    <asp:TemplateField HeaderText="Acciones">
                        <ItemTemplate>
                         <asp:Button ID="btnEditar" runat="server" Text="Editar" CommandName="Editar" CssClass="btn btn-primary" CommandArgument='<%# Eval("nacionalidad_id") %>' />
                        <asp:LinkButton ID="btnEliminar" runat="server" Text="Eliminar" CssClass="btn btn-danger" CommandName="Eliminar" CommandArgument='<%# Eval("nacionalidad_id") %>' OnClientClick="return confirm('¿Está seguro que desea eliminar este cantón?');" OnClick="btnEliminar_Click" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                
            </asp:GridView>
        </div>
         <div class="text-end pt-4">
            <a class="btn btn-success end text-center" href="./Add"
                data-bs-target="#exampleModal">
                Agregar Nacionalidad
            </a>
        </div>
    </div>
</asp:Content>
