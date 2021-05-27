﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LibOperativa;

namespace prjtallermotos.Admin
{
    public partial class Empleado : System.Web.UI.Page
    {
        clsllenarope objcontroles;
        clsadminop objadmin;
        private string strnombreapp;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                strnombreapp = Assembly.GetExecutingAssembly().GetName().Name + ".xml";
                objcontroles = new clsllenarope(strnombreapp);
                objadmin = new clsadminop(strnombreapp);
                if (!IsPostBack)
                {
                    
                    if (!objcontroles.llenarGrid(gvEmpleados))
                    {
                        return;
                    } 
                    if (!objcontroles.llenarDrop(drpIdEmpleado))
                    {
                        return;
                    }

                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
         
        }

        protected void drpIdEmpleado_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                objadmin.IntEmpleado_id = int.Parse(drpIdEmpleado.SelectedItem.Value);
                if (!objadmin.getone_empleado())
                {
                    objadmin = null;
                    Response.Write($"<script>alert('{objadmin.StrError}')</script>");
                    return;
                }
                txtIdEmpleado.Disabled = true;
                btnInsertarEmp.Enabled = true;
                txtIdEmpleado.Value = objadmin.IntEmpleado_id.ToString();
                txtDireccion.Value = objadmin.StrDireccionE;
                txtNombre.Value = objadmin.StrNombreE;
                txtTelefono.Value = objadmin.StrTelefonoE;
                txtSalario.Value = objadmin.IntSalarioE.ToString();
                drpCargo.SelectedIndex = int.Parse(objadmin.IntCargo.ToString());
                drpTurno.SelectedIndex = int.Parse(objadmin.IntTurno.ToString());
            }
            catch (Exception)
            {

                throw;
            }

        }
    }
}