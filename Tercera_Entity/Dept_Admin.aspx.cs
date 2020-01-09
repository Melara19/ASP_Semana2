using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Tercera_Entity.Clases;

namespace Tercera_Entity
{
    
    public partial class Dept_Admin : System.Web.UI.Page
    {
        ClsDepartamento depto = new ClsDepartamento();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["edit"] != null)
            {
                btnEditar.Visible = true;
                btnGuardar.Visible = false;
            }
            else
            {
                btnEditar.Visible = false;
                btnGuardar.Visible = true;

            }
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            depto.AgregarDepto(txtNombre.Value);
            Response.Redirect("~/Depto_Index.aspx");
        }

        protected void btnEditar_Click(object sender, EventArgs e)
        {
            depto.ModificarDepto(txtNombre.Value);
            Response.Redirect("~/Depto_Index.aspx");
        }
    }
}