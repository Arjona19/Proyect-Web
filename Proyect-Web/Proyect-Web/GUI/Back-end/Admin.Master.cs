using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyect_Web.GUI.Back_end
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Nombre.Text = Session["Nombre"].ToString();
            Nombre1.Text = Session["Nombre"].ToString();
            Nombre3.Text = Session["Nombre"].ToString();
            Image1.ImageUrl = "../../Img" + Session["Fotografia"].ToString();
            Image2.ImageUrl = "../../Img" + Session["Fotografia"].ToString();
            Image3.ImageUrl = "../../Img" + Session["Fotografia"].ToString();
            Image4.ImageUrl = "../../Img" + Session["Fotografia"].ToString();
        }
        public void CerrarS()
        {

        }
    }
}