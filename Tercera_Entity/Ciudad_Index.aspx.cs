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
    public partial class Ciudad_Index : System.Web.UI.Page
    {
        ClsUtilitaria util = new ClsUtilitaria();
        protected void Page_Load(object sender, EventArgs e)
        {
            ListarTabla();
        }
        public void ListarTabla()
        {
            DataSet d = new DataSet();
            d = util.ObtenerDs("SELECT * FROM tbCiudad", "T");
            Literal msj = new Literal();
            StringBuilder html = new StringBuilder();

            foreach (DataRow row in d.Tables["T"].Rows)
            {
                html.Append("<tr><td>" +
                    row["Ciu_Id"] + "</td><td>" +
                    row["Ciu_Descripcion"] + "</td>" +
                    "<td> <a href='#' onClick='Editar(\"" + row["Ciu_Id"] + "\") = ' class= 'btn btn-primary btn-sm '/>EDITAR</a> " +
                    "</td></tr>"
                    );
            }
            msj.Text = html.ToString();
            TablaCiudad.Controls.Add(msj);
        }

        protected void BtNuevoCiu_Click(object sender, EventArgs e)
        {

        }
    }
}