﻿<%@ Page Title="Gestión Cantones" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Ficha.aspx.cs" Inherits="ProyectoGIS.App.Catastro.Canton.Ficha" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="table-responsive my-custom-scrollbar table-wrapper-scroll-y">
        <asp:GridView ID="MiTabla" class="table table-sm table-striped table-hover table-bordered table-dark text-center align-middle" runat="server" AutoGenerateColumns="false" >
            <Columns>
                <asp:BoundField DataField="canton_id" HeaderText="Id" />
                <asp:BoundField DataField="provincia_nombre" HeaderText="Provincia" />
                <asp:BoundField DataField="canton_codigo" HeaderText="Codigo Cantón" />
                <asp:BoundField DataField="canton_nombre" HeaderText="Nombre" />
                <asp:BoundField DataField="canton_estado" HeaderText="Estado" />
                <asp:BoundField DataField="canton_observacion" HeaderText="Observaciones" />

                <asp:TemplateField HeaderText="Acciones">
                    <ItemTemplate>
                        <asp:Button ID="btnEditar" runat="server" Text="Editar" CommandName="Editar" CssClass="btn btn-primary" CommandArgument='<%# Eval("canton_id") %>' />
                        <asp:LinkButton ID="btnEliminar" runat="server" Text="Eliminar" CssClass="btn btn-danger" CommandName="Eliminar" CommandArgument='<%# Eval("canton_id") %>' OnClientClick="return confirm('¿Está seguro que desea eliminar este cantón?');" OnClick="btnEliminar_Click" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
</div>
    <div class="text-end pt-2">
        <a class="btn btn-success end text-center" href="./Add" data-bs-target="#exampleModal">
            Agregar Cantón
        </a>
    </div>

</asp:Content>
