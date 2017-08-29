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
            if (Session["IDUsuario"]==null)
            {
                Response.Redirect("~/GUI/Front-end/EventosF.aspx");
            }
            if (Session["Fotografia"]==null)
            {
                Image1.ImageUrl = "../../Img/user.png";
                Image2.ImageUrl = "../../Img/user.png";
                Image3.ImageUrl = "../../Img/user.png";
                Image4.ImageUrl = "../../Img/user.png";
            }
            else
            {
            Nombre.Text = Session["Nombre"].ToString();
            Nombre1.Text = Session["Nombre"].ToString();
            Nombre3.Text = Session["Nombre"].ToString();
            Image1.ImageUrl = "../../Img" + Session["Fotografia"].ToString();
            Image2.ImageUrl = "../../Img" + Session["Fotografia"].ToString();
            Image3.ImageUrl = "../../Img" + Session["Fotografia"].ToString();
            Image4.ImageUrl = "../../Img" + Session["Fotografia"].ToString();
            }
            
        }
        
    }
}