using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAO;
using System.Collections;
using BO;


namespace Proyect_Web.GUI.Front_end
{
    public partial class EventosF : System.Web.UI.Page
    {
        EventosDAO objEvento = new EventosDAO();
        EventosBO BO = new EventosBO();
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Remove("IDUsuario");
            DataList1.DataSource = objEvento.VerEvento();
            DataList1.DataBind();
            
            if (!IsPostBack)
            {
                MostrarCAtalogo();
            }    
           

        }
        public void MostrarCAtalogo()
        {

            DataList1.DataSource = objEvento.VerEvento();
            DataList1.DataBind();

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            
            
            //Response.Redirect("../../vermas.aspx?idEve=" + Eval("IDEvento") + "");
            BO.IDevento = Convert.ToInt32(Request.QueryString["idEve"]);

        }
    }
}