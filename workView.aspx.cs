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
    public partial class WebForm8 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        void getMemberByID()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("SELECT * from Appointments WHERE Appointment_id = @Appointment_id", con);
                    cmd.Parameters.AddWithValue("@Appointment_id", txtMemberID.Text.Trim());
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            txtFullName.Text = dr["Username"].ToString();
                            txtAccountStatus.Text = dr["Status"].ToString();
                        }
                    }
                    else
                    {
                        Response.Write("<script>alert('Invalid member details');</script>");
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void updateMemberStatusByID(string status)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("UPDATE Appointments SET Status = @status WHERE Appointment_id = @Appointment_id", con);
                    cmd.Parameters.AddWithValue("@status", status);
                    cmd.Parameters.AddWithValue("@Appointment_id", txtMemberID.Text.Trim());
                    cmd.ExecuteNonQuery();
                    GridView1.DataBind();
                    Response.Write("<script>alert('Member status updated successfully');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        bool CheckMemberExists()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("SELECT * FROM Appointments WHERE Appointment_id = @Appointment_id", con);
                    cmd.Parameters.AddWithValue("@Appointment_id", txtMemberID.Text.Trim());
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    return dt.Rows.Count >= 1;
                }
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('" + ex.Message + "');", true);
                return false;
            }
        }

        void clearForm()
        {
            txtFullName.Text = string.Empty;
            txtAccountStatus.Text = string.Empty;
            txtMemberID.Text = string.Empty;
        }


        protected void btnGo_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrWhiteSpace(txtMemberID.Text))
            {
                getMemberByID();
            }
            else
            {
                Response.Write("<script>alert('Please enter a member ID');</script>");
            }

        }

        protected void lnkActive_Click(object sender, EventArgs e)
        {
            updateMemberStatusByID("Active");
           
        }

        protected void lnkPending_Click(object sender, EventArgs e)
        {
            updateMemberStatusByID("Pending");
        }

        protected void lnkInactive_Click(object sender, EventArgs e)
        {
            updateMemberStatusByID("Deactive");
        }
    }
}