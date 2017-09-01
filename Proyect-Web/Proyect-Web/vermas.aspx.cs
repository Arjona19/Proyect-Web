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
        EventosBO datos = new EventosBO();
        EventosDAO objEvento = new EventosDAO();
        int id = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Request.QueryString["go"]);
            if (!IsPostBack)
            {


                // MostrarCAtalogo();
                cargartext();

            }
           

            
        }

        public void cargartext()
        {
            Label1.Text = objEvento.VerMas(id).Rows[0]["Nombre"].ToString();
            Label2.Text = objEvento.VerMas(id).Rows[0]["Descripcion"].ToString();
            Image1.ImageUrl = "~/Img/" + objEvento.VerMas(id).Rows[0]["FotoEvento"].ToString();
        }


    }
}