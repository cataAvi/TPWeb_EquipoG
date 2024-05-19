using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using negocio;
using dominio;

namespace WPWeb_EquipoG
{
    public partial class Productos : System.Web.UI.Page
    {
        public List<Articulo> lista;
        protected void Page_Load(object sender, EventArgs e)
        {
            //List<Articulo> lista;
            //if (Session["listaProductos"] != null)
            //    lista = (List<Articulo>)Session["listaProductos"];
            //else {
            //    ArticuloNegocio negocio = new ArticuloNegocio();
            //    lista = negocio.ListarConSP();
            //    Session.Add("listaProductos", lista);
            //}

            ArticuloNegocio negocio = new ArticuloNegocio();
            lista = negocio.ListarConSP();

            //dgvProductos.DataSource = lista;
            //dgvProductos.DataBind();
        }
    }
}