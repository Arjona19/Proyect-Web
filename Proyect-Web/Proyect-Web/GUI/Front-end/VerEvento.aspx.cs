using BO;
using DAO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyect_Web.GUI.Front_end
{
    public partial class VerEvento : System.Web.UI.Page
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
            Nombre.Text = objEvento.VerMas(id).Rows[0]["Nombre"].ToString();
            Descripcion.Text = objEvento.VerMas(id).Rows[0]["Descripcion"].ToString();
            Costo.Text = objEvento.VerMas(id).Rows[0]["CostoEntrada"].ToString();
            FechaFin.Text = objEvento.VerMas(id).Rows[0]["Fecha Fin"].ToString();
            FechaInicio.Text = objEvento.VerMas(id).Rows[0]["Fecha Inicio"].ToString();
            HoraInicio.Text = objEvento.VerMas(id).Rows[0]["HoraInicio"].ToString();
            HoraFinal.Text = objEvento.VerMas(id).Rows[0]["HoraFin"].ToString();

            Image1.ImageUrl = "~/Img/" + objEvento.VerMas(id).Rows[0]["FotoEvento"].ToString();
        }
    }
}