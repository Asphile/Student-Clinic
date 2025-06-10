using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace Student_Clinic01
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            fillChildValues();
        }
        void fillChildValues()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("SELECT work_name from Worker_table;", con);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    DropDownList2.DataSource = dt;
                    DropDownList2.DataTextField = "work_name";
                    DropDownList2.DataBind();
                }
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('" + ex.Message + "');", true);
            }
        }

        protected void btnPlaceAppointment_Click(object sender, EventArgs e)
        {

            signUpNewMember();

        }

        void signUpNewMember()
        {
            try
            {
                if (!DateTime.TryParse(txtDate.Text.Trim(), out DateTime dob))
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Invalid date format.');", true);
                    return;
                }

                using (SqlConnection con = new SqlConnection(strcon))
                {
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                      
                    }
                    SqlCommand cmd = new SqlCommand("INSERT INTO Appointments (Username, Last_name, email, Gender, Appointment_type, Date, Doctor, Nurse) VALUES (@Username, @Last_name, @email, @Gender, @Appointment_type, @Date, @Doctor, @Nurse)", con);
                    cmd.Parameters.AddWithValue("@Username", txtUsername.Text.Trim());
                    cmd.Parameters.AddWithValue("@Last_name", txtLastName.Text.Trim());
                    cmd.Parameters.AddWithValue("@email", txtEmail.Text.Trim());
                    cmd.Parameters.AddWithValue("@Gender", ddlGender.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@Appointment_type", ddlAppointmentType.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@Date", dob);
                    cmd.Parameters.AddWithValue("@Doctor", DropDownList2.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@Nurse", ddlNurse.SelectedItem.Value);
                    cmd.ExecuteNonQuery();
                    Response.Write("<script>alert('Record inserted successfully'); window.location.href='check.aspx';</script>");
                }
            }
            catch (Exception ex)
            {
                // Log the exception 
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('An error occurred while creating your appointment.');", true);
            }
        }



    }
}
