using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Data.Entity;
using System.Configuration;
using System.Data.Entity.Core.EntityClient;

namespace Tercera_Entity.Clases
{
    public class ClsConexionBD
    {
        
        public SqlConnection ObtenerCnx()
        {
            string sConexion = ConfigurationManager.ConnectionStrings["ASPSemana2Entities1"].ToString();
            string sProvider =new EntityConnectionStringBuilder(sConexion).ProviderConnectionString ;
            SqlConnection con = new SqlConnection(sProvider);
            return con;
        }

       
    }
}