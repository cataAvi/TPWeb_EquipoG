<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="WPWeb_EquipoG.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <hr />
    <h2>Tu carrito de compras</h2>
    <asp:GridView runat="server" ID="dgvCarrito" CssClass="table"></asp:GridView>
    <a href="Productos.aspx" class="btn btn-secondary">Seguir comprando</a>
    <a href="compraFinalizada.aspx" class="btn btn-secondary">Finalizar compra</a>
</asp:Content>
