using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BO;
using DAO;
using Servicio;
using System.IO;

namespace Proyect_Web.GUI.Back_end
{
    public partial class HomeAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            UsuariosCTRL servicio = new UsuariosCTRL();
            UsuarioBO datos = new UsuarioBO();
            try
            {
                datos.IDUsuario = int.Parse(Session["IDUsuario"].ToString());

                datos.Nombre = txtNombre.Text;
                datos.Correo = txtCorreo.Text;
                datos.Correo1 = txtCorreo2.Text;
                datos.Correo2 = txtCorreo3.Text;

                datos.Telefono = txtTelefono.Text;
                datos.SitioWeb = txtSitioWeb.Text;
                datos.Usuario = txtUsuario.Text;
                datos.Contraseña = txtContraseña.Text;
                

                string NombreImagen = Path.GetFileName(fupfoto.PostedFile.FileName);
                if (fupfoto.HasFile)
                {
                    fupfoto.PostedFile.SaveAs(Server.MapPath("~/Img/") + NombreImagen);
                    Image1.ImageUrl = "~/Img/" + NombreImagen;

                }
                //almacenar en la BD
                datos.Fotografia = "/" + NombreImagen;


                ////guardar foto
                //string NombreImagen = Path.GetFileName(FileUpload1.PostedFile.FileName);
                //FileUpload1.PostedFile.SaveAs(Server.MapPath("~/img/") + NombreImagen);
                //Image1.ImageUrl = "~/img/" + FileUpload1.PostedFile.FileName;
                ////almacenar en la BD
                //datos.Fotografia = "/" + NombreImagen;

                ;
                if (servicio.ActualizarAdmin(datos) == 1)
                {

                    Response.Write("<script language=javascript>alert('Datos Actualizados','Los cambios se notaran al iniciar sesion de nuevo');</script>");

                }
                else
                {
                    Response.Write("<script language=javascript>alert('Datos Actualizados');</script>");
                }
                //Actualizar();

            }
            catch (Exception)
            {


            }
        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            txtNombre.Text = "";
            txtCorreo.Text = "";
            txtCorreo2.Text = "";
            txtCorreo3.Text = "";
            Image1.ImageUrl = "../../Img/user.png";
            txtTelefono.Text = "";
            txtSitioWeb.Text = "";
            txtUsuario.Text = "";
            txtContraseña.Text = "";
        }
    }
}