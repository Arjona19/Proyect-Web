﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BO;

namespace Proyect_Web
{
    public partial class Index : System.Web.UI.MasterPage
    {
        EventosBO bo = new EventosBO();
        protected void Page_Load(object sender, EventArgs e)
        {
        //   int id = Convert.ToInt32(Request.QueryString["idEve"]);
        //    bo.IDevento = id;
        }
    }
}