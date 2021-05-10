using System;
using System.Collections.Generic;
using System.Linq;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PIATOPICOSTALVEZFINAL
{
    public partial class AdminPage : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            getReportData();
            try
            {
                if (Session["username"].ToString() == "" || Session["username"] == null)
                {

                }
                else
                {
                    getReportData();
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Favor de iniciar sesion para levantar un reporte');</script>");
                Response.Redirect("homepage.aspx");
            }

        }
        //update button
        protected void Button3_Click(object sender, EventArgs e)
        {
            if (checkIfReportExists())
            {
                updateReport();
            }
            else
            {
                Response.Write("<script>alert('Reporte no existe');</script>");
            }
        }
        //delete button
        protected void Button2_Click(object sender, EventArgs e)
        {
            deleteReport();
        }

        void getReportByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from TICKET WHERE idTicket='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    TextBox2.Text = dt.Rows[0][1].ToString();
                }
                else
                {
                    Response.Write("<script>alert('ID no valido');</script>");
                }


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }
        void deleteReport()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("DELETE from TICKET WHERE idTicket='" + TextBox1.Text.Trim() + "'", con);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Reporte eliminado');</script>");
                clearForm();
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void updateReport()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("UPDATE TICKET SET solucion=@solucion, status=@estado WHERE idTicket='" + TextBox1.Text.Trim() + "'", con);

                cmd.Parameters.AddWithValue("@solucion", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@estado", DropDownList2.SelectedValue);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Se ha actualizado la informacion');</script>");
                clearForm();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }


        bool checkIfReportExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from TICKET where idTicket='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }
        void clearForm()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox9.Text = "";
            TextBox11.Text = "";
        }

            protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
            {

            }

        protected void Button1_Click(object sender, EventArgs e)
        {
            getReportByID();
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {

        }
        void getReportData()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT T.idTicket,T.detalles,T.Solucion,S.descripcion as Estado, T.usuario from TICKET T, STATUSCHECK S WHERE T.status=S.status", con);
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
    }
}