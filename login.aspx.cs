using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Student_Clinic01
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        bool checkMemberExists()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("SELECT * FROM master_student WHERE student_number = @student_number", con);
                    cmd.Parameters.AddWithValue("@student_number", txtStudentNumber.Text.Trim());
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    return dt.Rows.Count >= 1;
                }
            }
            catch (Exception ex)
            {
                // Log the exception
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('An error occurred while checking membership.');", true);
                return false;
            }
        }


        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("SELECT * FROM master_student WHERE student_number = @student_number AND password = @password", con);
                    cmd.Parameters.AddWithValue("@student_number", txtStudentNumber.Text.Trim());
                    cmd.Parameters.AddWithValue("@password", txtPassword.Text.Trim());
                    SqlDataReader dr = cmd.ExecuteReader();
                   
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect", "alert('Login successful'); window.location.href='Appointment.aspx';", true);
                            Session["username"] = dr["student_number"].ToString();
                            Session["fullname"] = dr["username"].ToString();
                            Session["role"] = "user";
                            Session["status"] = dr["account_states"].ToString();
                        }


                    }
                    else
                    {

                        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Invalid credentials. Please try to sign up and get an account.');", true);
                    }
                }
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('" + ex.Message + "');", true);
            }

        }
    }
}