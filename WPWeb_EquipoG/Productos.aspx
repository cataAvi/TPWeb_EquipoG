<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Productos.aspx.cs" Inherits="WPWeb_EquipoG.Productos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--<asp:GridView ID="dgvProductos" runat="server" CssClass="table"></asp:GridView>--%>

    <div class="row row-cols-1 row-cols-md-3 g-4">

    <%foreach (dominio.Articulo item in lista)
        {  %>
        <div class="col">
            <div class="card">
                <img src="<% = item.ImagenUrl %>" class="card-img-top" alt="" >
                <div class="card-body">
                    <h5 class="card-title"><% = item.Nombre %></h5>
                    <p class="card-text"><% = item.Descripcion %></p>
                </div>
                <a href="Carrito.aspx?id=<%=item.Id%>" class ="btn btn-primary" >Agregar</a>
            </div>
        </div>
             <% } %>
      </div>



</asp:Content>
