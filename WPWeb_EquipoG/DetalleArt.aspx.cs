using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dominio;
using negocio;

namespace WPWeb_EquipoG
{
    public partial class DetalleArt : System.Web.UI.Page
    {
        public Articulo producto;
        public List<string> vecImagenes;
        public int cantImagenes;
        protected void Page_Load(object sender, EventArgs e)
        {
            //producto = Session["producto"] != null ? (Articulo)Session["producto"] : new Articulo();
            //Session.Add("producto", producto);

            int id = int.Parse(Request.QueryString["id"]);

            List<Articulo> listaOriginal = (List<Articulo>)Session["listaProductos"];
            producto = listaOriginal.Find(x => x.Id == id);

            ArticuloNegocio negocio = new ArticuloNegocio();
            vecImagenes = negocio.vectorImagenes(id);
            cantImagenes = vecImagenes.Count();

            Session.Add("producto", producto);
            Session.Add("vecImagenes", vecImagenes);
            Session.Add("cantImgenes", cantImagenes);

        }
    }
}