﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoGIS
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario_login"] != null)
            {
                Response.Redirect("/App/Home");                  
            }
           
        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (usuario_login.Text == "admin" && usuario_clave.Text == "admin")
            {
                Session["usuario_login"] = usuario_login.Text;
                Session["rol"] = "ADMIN";
                Response.Redirect("./App/Home.aspx");

            }
            else if(usuario_login.Text == "mod" && usuario_clave.Text == "mod")
            {
                Session["usuario_login"] = usuario_login.Text;
                Session["rol"] = "MOD";
                Response.Redirect("./App/Home.aspx");
            }
            else
            {
                errorLabel.Visible = true;
                //Mostrar una pantalla de error 
                errorLabel.Text = "Usuario / Contraseña invalidos.";


            }
            
        }
    }
}