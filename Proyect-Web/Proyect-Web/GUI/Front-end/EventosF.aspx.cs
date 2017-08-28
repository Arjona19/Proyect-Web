using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAO;


namespace Proyect_Web.GUI.Front_end
{
    public partial class EventosF : System.Web.UI.Page
    {
        EventosDAO objEvento = new EventosDAO();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MostrarCAtalogo();
            }    
           

        }
        public void MostrarCAtalogo()
        {
            Repeater1.DataSource = objEvento.VerEvento();
            Repeater1.DataBind();
        }
    }
}