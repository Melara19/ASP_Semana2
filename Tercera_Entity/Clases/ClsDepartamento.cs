using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Tercera_Entity.Clases
{

    public class ClsDepartamento
    {
        ASPSemana2Entities1 pe = new ASPSemana2Entities1();
        tbDepartamento TbDepto = new tbDepartamento();
        public void AgregarDepto(string depto)
        {
            TbDepto.Dept_Descripcion = depto;
            TbDepto.Dept_UsuCrea = int.Parse(HttpContext.Current.Session["Id_Usuario"].ToString());
            TbDepto.Dept_FechaCrea = DateTime.Now;

            pe.tbDepartamento.Add(TbDepto);
            pe.SaveChanges();
        }


        public void ModificarDepto(string depto)
        {
            TbDepto.Dept_Descripcion = depto;
            TbDepto.Dept_UsuModifica = int.Parse(HttpContext.Current.Session["Id_Usuario"].ToString());
            TbDepto.Dept_FechaMidifica = DateTime.Now;

            pe.SaveChanges();
        }

    }
}