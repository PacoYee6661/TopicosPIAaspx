using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PIATOPICOSTALVEZFINAL
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].Equals(""))
                {
                    LinkButton1.Visible = true; //user login link button
                    LinkButton2.Visible = true; //signup link button
                    LinkButton6.Visible = true; //admin login link button
                    LinkButton3.Visible = false; //logout link button
                    LinkButton7.Visible = false; //message for the user link button
                    LinkButton4.Visible = false; //resolve problems by admin button
                }
                else if (Session["role"].Equals("user"))
                {
                    LinkButton1.Visible = false; //user login link button
                    LinkButton2.Visible = false; //signup link button
                    LinkButton6.Visible = true; //admin login link button
                    LinkButton3.Visible = true; //logout link button
                    LinkButton7.Visible = true; //message for the user link button
                    LinkButton4.Visible = false; //resolve problems by admin button
                }
                else if (Session["role"].Equals("admin"))
                {
                    LinkButton1.Visible = false; //user login link button
                    LinkButton2.Visible = false; //signup link button
                    LinkButton6.Visible = false; //admin login link button
                    LinkButton3.Visible = true; //logout link button
                    LinkButton7.Text = "Hola Admin" ; //message for the user link button
                    LinkButton4.Visible = true; //resolve problems by admin button
                }
            }
            catch
            {

            }
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminLogin.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminPage.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserLogin.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserSignup.aspx");
        }

        protected void LinkButton2_Click1(object sender, EventArgs e)
        {
            Response.Redirect("UserSignup.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["fullname"] = "";
            Session["role"] = "";
            LinkButton1.Visible = true; //user login link button
            LinkButton2.Visible = true; //signup link button
            LinkButton6.Visible = true; //admin login link button
            LinkButton3.Visible = false; //logout link button
            LinkButton7.Visible = false; //message for the user link button
            LinkButton4.Visible = false; //resolve problems by admin button
            Response.Redirect("homepage.aspx");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserDetails.aspx");
        }
    }
}