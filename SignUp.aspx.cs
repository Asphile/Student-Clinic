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
    public partial class WebForm3 : System.Web.UI.Page
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
                    SqlCommand cmd = new SqlCommand("SELECT * FROM master_student WHERE student_number= @student_number", con);
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

        void signUpNewMember()
        {
            try
            {

                using (SqlConnection con = new SqlConnection(strcon))
                {
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                        Response.Write("<script>alert('Record inserted successfully'); window.location.href='login.aspx';</script>");
                    }
                    SqlCommand cmd = new SqlCommand ("INSERT INTO master_student (student_number, username, email, cell_number, password) VALUES (@student_number, @username, @email, @cell_number, @password)", con);
                    cmd.Parameters.AddWithValue("@student_number", txtStudentNumber.Text.Trim());
                    cmd.Parameters.AddWithValue("@username", txtUsername.Text.Trim());
                    cmd.Parameters.AddWithValue("@email", txtEmail.Text.Trim());
                    cmd.Parameters.AddWithValue("@cell_number", txtCellNumber.Text.Trim());
                    cmd.Parameters.AddWithValue("@password", txtPassword.Text.Trim());

                    cmd.ExecuteNonQuery();
                    clearForm();
                    con.Close();
                   
                }

            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('" + ex.Message + "');", true);
            }

        }
         protected void btnSignUp_Click(object sender, EventArgs e)
         {
            if (checkMemberExists())
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('You already have an account.');", true);
            }
            else
            {
                signUpNewMember();
            }
         }


        void clearForm()
        {
            // Clear the form fields
            txtStudentNumber.Text = "";
            txtUsername.Text = "";
            txtEmail.Text = "";
            txtCellNumber.Text = "";
            txtPassword.Text = "";
        }





    }
}
