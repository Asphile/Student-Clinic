using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Student_Clinic01
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("SELECT * from Admin_Login where Admin_ID = @AdminID AND Admin_password= @AdminPassword", con);
                    cmd.Parameters.AddWithValue("@AdminID", txtAdminId.Text.Trim());
                    cmd.Parameters.AddWithValue("@AdminPassword", txtAdminPassword.Text.Trim());
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect", "alert('Login successful'); window.location.href='ViewApp.aspx';", true);
                            //Session["username"] = dr["student_number"].ToString();
                            //Session["fullname"] = dr["username"].ToString();
                            //Session["role"] = "user";
                            //Session["status"] = dr["account_states"].ToString();
                        }
                        //Response.Redirect("ViewApp.aspx");
                    }
                    else
                    {
                        Response.Write("<script>alert('Invalid credentials');</script>");
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}