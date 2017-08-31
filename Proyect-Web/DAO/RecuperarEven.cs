using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAO;
using BO;
using System.Data;

namespace DAO
{
   public class RecuperarEven
    {
        ConexionDAO con = new ConexionDAO();
        public string Nombre(EventosBO obj)
        {

            DataSet tabla= con.EjecutarSentencia("select * from Evento where Evento.IDEvento = '" + obj.IDevento + "'");
            string Nombre = "";
            if (tabla.Tables[0].Rows.Count > 0)
            {
                Nombre = Convert.ToString(tabla.Tables[0].Rows[0]["Nombre"]);

            }
            return Nombre;
        }
        public string Descripcion (EventosBO obj)
        {

            DataSet tabla = con.EjecutarSentencia("select Descripcion from Evento where Evento.IDEvento = '" + obj.IDevento + "'");
            string Descripcion = "";
            if (tabla.Tables[0].Rows.Count > 0)
            {
                Descripcion = Convert.ToString(tabla.Tables[0].Rows[0]["Descripcion"]);

            }
            return Descripcion;
        }

        public int IDevento(EventosBO obj)
        {

            DataSet tabla = con.EjecutarSentencia("select Descripcion from Evento where Evento.IDEvento = '" + obj.IDevento + "'");
            int id = 0;
            if (tabla.Tables[0].Rows.Count > 0)
            {
                id = Convert.ToInt32(tabla.Tables[0].Rows[0]["IDEvento"]);

            }
            return id;
        }


    }
}
