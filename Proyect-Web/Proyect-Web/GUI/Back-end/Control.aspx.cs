using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAO;
using BO;

namespace Proyect_Web.GUI.Back_end
{
    public partial class Control : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Aprobar();
                Rechazar();
            }
            
        }

        protected void gvRender(object sender, EventArgs e)
        {
            GridView gv = (GridView)sender;

            if ((gv.ShowHeader == true && gv.Rows.Count > 0)
                || (gv.ShowHeaderWhenEmpty == true))
            {
                gv.HeaderRow.TableSection = TableRowSection.TableHeader;
            }
            if (gv.ShowFooter == true && gv.Rows.Count > 0)
            {
                gv.FooterRow.TableSection = TableRowSection.TableFooter;
            }
        }

        protected void Seleccionar(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "btnAprobar")
            {
                int indice = Convert.ToInt32(e.CommandArgument);
                int id = Convert.ToInt32(GridView1.Rows[indice].Cells[1].Text);
                EventosDAO oEventoDAO = new EventosDAO();
                EventosBO oEventoBO = new EventosBO();
                oEventoBO.IDevento = id;
                oEventoDAO.ModificarEstatus(oEventoBO, 1);
                Aprobar();
                Rechazar();
            }
        }
        public void Aprobar()
        {
            EventosDAO d = new EventosDAO();
            GridView1.DataSource= d.Aprobar();
            GridView1.DataBind();
        }
        public void Rechazar()
        {
            EventosDAO d = new EventosDAO();
            GridView2.DataSource = d.VerEvento();
            GridView2.DataBind();
        }
        protected void Rechazar(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "btnRechazar")
            {
                int indice = Convert.ToInt32(e.CommandArgument);
                int id = Convert.ToInt32(GridView2.Rows[indice].Cells[1].Text);
                EventosDAO oEventoDAO = new EventosDAO();
                EventosBO oEventoBO = new EventosBO();
                oEventoBO.IDevento = id;
                oEventoDAO.ModificarEstatus(oEventoBO, 0);
                Rechazar();
                Aprobar();
            }
        }
    }
}