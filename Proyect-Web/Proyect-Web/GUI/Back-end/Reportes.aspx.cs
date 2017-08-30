using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAO;
using System.Data.SqlClient;
using System.Data;

namespace Proyect_Web.GUI.Back_end
{
    public partial class Reportes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Fecha.Text = DateTime.Now.ToString();
            Label1.Text = DateTime.Now.ToString();
            Label2.Text = DateTime.Now.ToString();
            EventosDAO d = new EventosDAO();
            GridView1.DataSource = d.VerUsuarios();
            GridView1.DataBind();
            GridView2.DataSource = d.Aprobar();
            GridView2.DataBind();
            GridView3.DataSource = d.VerEvento();
            GridView3.DataBind();
        }
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-TIF5UA39\\SANTIAGO;Initial Catalog=EventosProyecto;Integrated Security=True");
        protected void BackUp_Click(object sender, EventArgs e)
        {
            string nombre_copia = (System.DateTime.Today.Day.ToString() + "-" + System.DateTime.Today.Month.ToString() + "-" + System.DateTime.Today.Year.ToString() + "-" + System.DateTime.Now.Hour.ToString() + "-" + System.DateTime.Now.ToString() + "-" + System.DateTime.Now.Second.ToString() + "-MiPrograma");
            string nuestra_consulta = "BACKUP DATABASE [EventosProyecto] TO  DISK = N'C:\\Program Files\\Microsoft SQL Server\\MSSQL12.SANTIAGO\\MSSQL\\Backup\\CulturE' WITH NOFORMAT, NOINIT,  NAME = N'EventosProyecto-Full Database Backup', SKIP, NOREWIND, NOUNLOAD,  STATS = 10";
            SqlCommand cmd = new SqlCommand(nuestra_consulta, con);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                Response.Write("<script language=javascript>alert('Copia generada Satisfactoriamente');</script>");

            }
            catch (Exception ex)
            {
                Response.Write("<script language=javascript>alert('Algo salio mal');</script>");

                throw;
            }
            finally
            {
                con.Close();
                con.Dispose();
            }
        }
    }
}