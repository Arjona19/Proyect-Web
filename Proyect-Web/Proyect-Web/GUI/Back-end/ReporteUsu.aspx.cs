using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAO;

namespace Proyect_Web
{
    public partial class ReporteUsu : System.Web.UI.Page
    {
        EventosDAO datos = new EventosDAO();
        protected void Page_Load(object sender, EventArgs e)
        {

            GridView1.DataSource = datos.VerEvento();
            GridView1.DataBind();

        }
    }
}