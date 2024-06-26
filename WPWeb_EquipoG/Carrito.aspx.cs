﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dominio;
using negocio;

namespace WPWeb_EquipoG
{
    public partial class WebForm2 : System.Web.UI.Page
    {
     
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Articulo> carrito;
            carrito = Session["carrito"] != null ? (List<Articulo>)Session["carrito"] : new List<Articulo>();
            Session.Add("carrito", carrito);

            int id = int.Parse(Request.QueryString["id"]);

            List<Articulo> listaOriginal = (List<Articulo>)Session["listaProductos"];
            Articulo seleccionado = listaOriginal.Find(x => x.Id == id);

            bool agregado = false;
            foreach (Articulo art in carrito)
            {
                if(art.Id == seleccionado.Id)
                    agregado = true;
            }

            if (agregado)
            {
                seleccionado.cantidad++;
            }
            else
            {
                carrito.Add(seleccionado);
            }

            dgvCarrito.DataSource = carrito;
            dgvCarrito.DataBind();
        }
    }
}