using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PIATOPICOSTALVEZFINAL
{
    public partial class AgregarReporteUsuario : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["username"].ToString()=="" || Session["username"]==null)
                {

                }
                else
                {

                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Favor de iniciar sesion para levantar un reporte');</script>");
                Response.Redirect("homepage.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            addNewReport();
        }
        void addNewReport()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO TICKET values (@detalles,'','1',@usuario)", con);

                cmd.Parameters.AddWithValue("@detalles", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@usuario", Session["username"].ToString().Trim());
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Reporte generado correctamente, favor de ir a su pagina de usuario para ver los reportes generados y poder consultar su estado');</script>");
                clearForm();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }
        void clearForm()
        {
            TextBox3.Text = "";
        }
    }
}