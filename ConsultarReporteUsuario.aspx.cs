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
    public partial class ConsultarReporteUsuario : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["username"].ToString() == "" || Session["username"] == null)
                {

                }
                else
                {
                    getUserData();
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Favor de iniciar sesion para levantar un reporte');</script>");
                Response.Redirect("homepage.aspx");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
        void getUserData()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT T.idTicket, T.detalles, T.solucion, S.descripcion from TICKET as T, StatusCheck as S where T.status=S.status AND usuario='" + Session["username"] + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            
        }
    }
}