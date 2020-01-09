using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Tercera_Entity.Clases;

namespace Tercera_Entity
{
    public partial class Depto_Index : System.Web.UI.Page
    {
        ClsUtilitaria util = new ClsUtilitaria();
        protected void Page_Load(object sender, EventArgs e)
        {
            ListarTabla();
        }

        public void ListarTabla()
        {
            DataSet ds = new DataSet();
            ds = util.ObtenerDs("SELECT * FROM tbDepartamento", "T");
            Literal msj = new Literal();
            StringBuilder html = new StringBuilder();

            foreach(DataRow row in ds.Tables["T"].Rows)
            {
                html.Append("<tr><td>" +
                    row["Dept_Id"] + "</td><td>"+
                    row["Dept_Descripcion"] + "</td>"+
                    "<td> <a href='#' onClick='Editar(\""+ row["Dept_Id"] + "\") = ' class= 'btn btn-primary btn-sm '/>EDITAR</a> " +
                    "</td></tr>"
                    );
            }
            msj.Text = html.ToString();
            TablaDepto.Controls.Add(msj);
        }

        protected void BtnNuevo_Click(object sender, EventArgs e)
        {
            Response.Redirect("Dept_Admin.aspx");
        }
    }
}