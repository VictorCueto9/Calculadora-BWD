using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practica2
{
    public partial class Login : System.Web.UI.Page
    {
        private  int intentos = 3;
        private const string usuario = "Victor Cueto", contrasena = "Victor09";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ViewState["cuenta"] = intentos;
            }
            else intentos = (int)ViewState["cuenta"];
        }

        protected void btnIngresa_Click(object sender, EventArgs e)
        {
            if(intentos > 1)
            {
                if (tbusuario.Text != usuario || tbcontra.Text != contrasena)
                {
                    intentos -= 1;
                    lbnota.Text = "Usuario o Contraseña Incorrectos. Intentos disponibles: " + intentos.ToString();
                    ViewState["cuenta"] = intentos;
                }
                else Response.Redirect("Calculadora.aspx");
            }
            else
            {
                lbnota.Text = "Superaste el número de intentos. Prueba más tarde";
                btnIngresa.CssClass = "btn btn-dark btn-lg btn-block disabled";
            }
        }
    }
}