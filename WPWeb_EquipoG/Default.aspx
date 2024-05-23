<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WPWeb_EquipoG.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-6">
            <hr />
            <%--<h1>Hola Mundo</h1>--%>
            <div class="card" style="width: 50rem;">
                <img src="https://billowshop.com/blog/wp-content/uploads/Costo-plataforma.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Equipo-Gcommerce</h5>
                    <p class="card-text">Aceptamos todos los medios de pago. Tenemos hasta 18 cuotas sin interes. Envio gratis a todo el país. ¿Qué estás esperando para realizar tu pedido?</p>
                    <a href="Productos.aspx" class="btn btn-primary">Ir a comprar!</a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
