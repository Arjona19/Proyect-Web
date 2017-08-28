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
<<<<<<< HEAD
            DataList1.DataSource = objEvento.VerEvento();
            DataList1.DataBind();
=======
            //Repeater1.DataSource = objEvento.VerEvento();
            //Repeater1.DataBind();
>>>>>>> 26e9f404f0d4a874531bd5fc067ae0620e925545
        }
    }
}