<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="DetalleArt.aspx.cs" Inherits="WPWeb_EquipoG.DetalleArt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style type="text/css">
        .slide {
            margin-top: 10px;
        }

        .slide img{
            border: 5px solid black;
            height: 65vh;
        }
     </style>

    <div id="carouselExampleIndicators" class="carousel slide">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="<% = producto.ImagenUrl %>" class="d-block w-100" alt="...">
            </div>

          <%foreach (string url in vecImagenes)
                { %>
                          <div class="carousel-item">
                             <img src="<%=url%>" class="d-block w-100" alt="...">
                         </div>
            <% } %>


        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>

    <hr />

    <h1><%=producto.Nombre %></h1>
    <h2><%=producto.Descripcion %></h2>
    <a href="Productos.aspx" class="btn btn-primary">Volver<a>


</asp:Content>
