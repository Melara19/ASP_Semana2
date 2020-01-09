using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Tercera_Entity.Clases;

namespace Tercera_Entity
{
    public partial class Index : System.Web.UI.Page
    {
        ClsUtilitaria util = new ClsUtilitaria();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BIngresar_Click(object sender, EventArgs e)
        {
            Session["Usuario"] = Codigo.Value;

            DataSet ds = new DataSet();
            ds = util.ObtenerDs("SELECT Count(*) DATO FROM tbUsuario WHERE  usu_usuario = '" + Codigo.Value + "'", "T");
            string contar = ds.Tables["T"].Rows[0]["DATO"].ToString();
            if (contar == "0")
            {
                Response.Write("<script>alert('El usuario es incorrecto')</script>");
            }
            else
            {
                ds = util.ObtenerDs("SELECT usu_id FROM tbUsuario WHERE usu_usuario = '" + Codigo.Value + "'", "I");
                Session["Id_Usuario"] = ds.Tables["I"].Rows[0]["usu_id"].ToString();
                Response.Redirect("Principal.aspx");
            }
            
        }

      
    }
}