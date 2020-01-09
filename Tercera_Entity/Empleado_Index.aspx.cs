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
    public partial class Empleado_Index : System.Web.UI.Page
    {
        ClsUtilitaria util = new ClsUtilitaria();
        protected void Page_Load(object sender, EventArgs e)
        {
            ListarTabla();
        }

        public void ListarTabla()
        {
            DataSet ds = new DataSet();
            ds = util.ObtenerDs("SELECT * FROM tbEmpleados", "T");
            Literal msj = new Literal();
            StringBuilder html = new StringBuilder();

            foreach (DataRow row in ds.Tables["T"].Rows)
            {
                html.Append("<tr><td>" +
                    row["Emp_Id"] + "</td><td>" +
                    row["Emp_Nombre"] + "</td><td>" +
                    row["Emp_Apellido"] + "</td><td>" +
                    row["Emp_Sexo"] + "</td><td>" +
                    row["Emp_Edad"] + "</td>" +
                    "<td> <a href='#' onClick='Editar(\"" + row["Emp_Id"] + "\") = ' class= 'btn btn-primary btn-sm '/>EDITAR</a> " +
                    "</td></tr>"
                    );
            }
            msj.Text = html.ToString();
            TablaEmp.Controls.Add(msj);
        }

        protected void BtNuevoEmp_Click(object sender, EventArgs e)
        {

        }
    }
}