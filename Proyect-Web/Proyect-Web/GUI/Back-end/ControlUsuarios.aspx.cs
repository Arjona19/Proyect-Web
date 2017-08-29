using BO;
using DAO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyect_Web.GUI.Back_end
{
    public partial class ControlUsuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            VerUsuarios();
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
        protected void Convertir(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "btnConvert")
            {
                int indice = Convert.ToInt32(e.CommandArgument);
                int id = Convert.ToInt32(GridView1.Rows[indice].Cells[2].Text);
                EventosDAO oEventoDAO = new EventosDAO();
                EventosBO oEventoBO = new EventosBO();
                oEventoBO.IDevento = id;
                oEventoDAO.ModificarEstatus(oEventoBO, 1);
                VerUsuarios();
            }
        }
        public void VerUsuarios()
        {
            EventosDAO d = new EventosDAO();
            GridView1.DataSource = d.VerUsuarios();
            GridView1.DataBind();
        }
    }
}