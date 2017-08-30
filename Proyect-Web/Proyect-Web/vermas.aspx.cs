using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyect_Web
{
    public partial class vermas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int devuelve = Convert.ToInt32(Request.QueryString["cultur"]);
        }
    }
}