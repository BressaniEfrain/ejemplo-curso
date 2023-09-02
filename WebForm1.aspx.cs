using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP3
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGuardarLocalidad_Click(object sender, EventArgs e)
        {
            bool existe = false;
            if (txtLocalidad.Text.Trim() != "")
            {
                foreach(ListItem loc in ddlLocalidades.Items)//validar si ya existe
                {
                    if (txtLocalidad.Text.Trim() == loc.Text)
                    {
                        existe = true;
                    }
                }

                if (!existe)
                {
                    ddlLocalidades.Items.Add(txtLocalidad.Text.Trim());
                    lblError.Text = "Localidad Añadida";
                }
                else
                {
                    lblError.Text = "Localidad existente";
                }

                txtLocalidad.Text = "";
            }
            else
            {
                lblError.Text = "Ingrese localidad";
            }
        }

        protected void btnInicio_Click(object sender, EventArgs e)
        {
            Response.Redirect("Inicio.aspx");
        }

        protected void btnGuardarUsuario_Click(object sender, EventArgs e)
        {
            lblBienvenida.Text = $"Bienvenido/a {txtNombreUsuario.Text}";  
        }
    }
}