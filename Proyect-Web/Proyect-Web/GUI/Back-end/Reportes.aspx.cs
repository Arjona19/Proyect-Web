using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAO;

namespace Proyect_Web.GUI.Back_end
{
    public partial class Reportes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Fecha.Text = DateTime.Now.ToString();
            Label1.Text = DateTime.Now.ToString();
            Label2.Text = DateTime.Now.ToString();
            EventosDAO d = new EventosDAO();
            GridView1.DataSource = d.VerUsuarios();
            GridView1.DataBind();
            GridView2.DataSource = d.Aprobar();
            GridView2.DataBind();
            GridView3.DataSource = d.VerEvento();
            GridView3.DataBind();
        }
    }
}