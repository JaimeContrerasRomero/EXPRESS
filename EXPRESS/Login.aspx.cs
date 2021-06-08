using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EXPRESS.dsDatosTableAdapters;

namespace EXPRESS
{
    public partial class Login : System.Web.UI.Page
    {
        LoginTableAdapter login = new LoginTableAdapter();
        dsDatos dsDatos = new dsDatos();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)//Valida si es la primera vez que se abre la pagina
            {
                if (Request.Cookies["User"] != null && Request.Cookies["Pass"] != null)
                {
                    this.txtEmail.Text = Request.Cookies["User"].Value;
                    this.txtPassword.Text = Request.Cookies["Pass"].Value;
                }
            }
        }

        protected void btnEntrar_Click(object sender, EventArgs e)
        {
            Response.Cookies["User"].Value = this.txtEmail.Text.Trim();
            Response.Cookies["Pass"].Value = this.txtPassword.Text.Trim();
            try
            {
                String url = Request.QueryString["RetunrUrl"];
                //ejecutar la consulta de login
                this.login.Fill(this.dsDatos.Login, this.txtEmail.Text.Trim(), this.txtPassword.Text.Trim());
                //Validar si encontró datos.
                if(this.dsDatos.Login.Rows.Count > 0)
                {
                    if(url == null)
                    {
                        Response.Redirect("Default.aspx", false);
                        Context.ApplicationInstance.CompleteRequest();
                    }
                    else
                    {
                        System.Web.Security.FormsAuthentication.RedirectFromLoginPage(this.txtEmail.Text, false);
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error: " + ex.Message.ToString());
            }
        }
    }
}