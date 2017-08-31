using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAO;
using BO;

namespace Proyect_Web
{
    public partial class vermas : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
           
            EventosBO bo = new EventosBO();
            EventosDAO dao = new EventosDAO();
           

           // bo.IDevento = Convert.ToInt32(Request.QueryString["idEve"]);
            //bo.IDUsuario = Convert.ToInt32(Session["IDUsuario"]);
            DataList1.DataSource = dao.VerMas(bo);
            DataList1.DataBind();
        }

        
    }
}