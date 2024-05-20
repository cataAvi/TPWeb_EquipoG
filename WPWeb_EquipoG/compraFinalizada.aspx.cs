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
    public partial class compraFinalizada : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Articulo> vaciarCarrito = new List<Articulo>();
            Session.Clear();
        }
    }
}