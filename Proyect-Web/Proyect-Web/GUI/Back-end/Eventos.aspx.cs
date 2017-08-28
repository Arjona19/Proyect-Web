using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BO;
using DAO;
using Servicio;
using System.Collections;
using System.IO;
using System.Data;
using System.Data.SqlClient;

namespace Proyect_Web.GUI.Back_end
{
    public partial class Eventos : System.Web.UI.Page
    {
        EventosCTRL Ser = new EventosCTRL();
        EventosDAO dao = new EventosDAO();
        EventosBO bo = new EventosBO();
        protected void Page_Load(object sender, EventArgs e)
        {ArrayList ListUbic = dao.RecuperarCiudad();

            dblUbicacion.DataSource = ListUbic;
            dblUbicacion.DataBind();
            GridView1.DataSource = Ser.ServicioTabla();
            GridView1.DataBind();
            if (Image1.ImageUrl == "")
            {
                Image1.ImageUrl = "~/Img/subirfoto.jpg";
            }
            
            


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            bo.IDUsuario = Convert.ToInt32(Session["IDUsuario"]);
            bo.Nombre = txtNombreEvento.Text;
            bo.Descripcion = txtDescripcion.Value;
            bo.HoraInicio = HoraInicio.Value;
            bo.HoraFin = HoraFin.Value;
            bo.Costo = Precio.Value;
            bo.FechaInicio = FechaInicio.Value;
            bo.FechaFin = FechaFin.Value;
            string NombreImagen = Path.GetFileName(fupfoto.PostedFile.FileName);
            if (fupfoto.HasFile)
            {
                fupfoto.PostedFile.SaveAs(Server.MapPath("~/img/") + NombreImagen);
                Image1.ImageUrl = "~/img/" + fupfoto.PostedFile.FileName;

            }
            //almacenar en la BD
            bo.Fotografia = "/" + NombreImagen;
            bo.Aprobacion = 0;
            bo.Categoria = Convert.ToInt32(Categoria.SelectedValue);
            bo.Ubicacion = 1;
            if (dao.GuardarEvento(bo) != 0)
            {
                Response.Write("<script language=javascript>alert('Evento Guardado');</script>");
            }
            else
            {
                Response.Write("<script language=javascript>alert('Algo salio mal');</script>");
            }
            GridView1.DataSource = Ser.ServicioTabla();
            GridView1.DataBind();
        }
    }
}