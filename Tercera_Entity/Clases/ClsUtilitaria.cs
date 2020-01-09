using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Tercera_Entity.Clases
{
    public class ClsUtilitaria
    {
        ClsConexionBD cnx = new ClsConexionBD();
        SqlConnection con = new SqlConnection();
        public DataSet ObtenerDs(string query, string tabla)
        {
            con = cnx.ObtenerCnx();
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            da.Fill(ds, tabla);
            con.Close();

            return ds;
        }
    }
}