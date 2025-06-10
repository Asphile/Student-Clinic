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
    public partial class WebForm6 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }
        bool CheckAdminExists()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("SELECT * FROM Worker_table WHERE Work_id = @Work_id", con);
                    cmd.Parameters.AddWithValue("@Work_id", txtWorkId.Text.Trim());
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
            txtWorkName.Text = "";
            txtWorkId.Text = "";
            txtPassword.Text = "";
        }

        void AdminAdd()
        {
            try
            {
                if (!CheckAdminExists())
                {
                    using (SqlConnection con = new SqlConnection(strcon))
                    {
                        con.Open();
                        SqlCommand cmd = new SqlCommand("INSERT INTO Worker_table (Work_id, work_name, password) VALUES (@Work_id, @work_name, @password)", con);
                        cmd.Parameters.AddWithValue("@Work_id", txtWorkId.Text.Trim());
                        cmd.Parameters.AddWithValue("@work_name", txtWorkName.Text.Trim());
                        cmd.Parameters.AddWithValue("@password", txtPassword.Text.Trim());
                        cmd.ExecuteNonQuery();
                    }
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Worker added successfully');", true);
                    clearForm();
                    GridView1.DataBind();
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Worker ID already exists.');", true);
                }
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('" + ex.Message + "');", true);
            }
        }

        void AdminDelete()
        {
            try
            {
                if (CheckAdminExists())
                {
                    using (SqlConnection con = new SqlConnection(strcon))
                    {
                        con.Open();
                        SqlCommand cmd = new SqlCommand("DELETE FROM Worker_table WHERE Work_id = @Work_id", con);
                        cmd.Parameters.AddWithValue("@Work_id", txtWorkId.Text.Trim());
                        cmd.ExecuteNonQuery();
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Worker deleted successfully');", true);
                        clearForm();
                        GridView1.DataBind();
                    }
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Worker ID does not exist.');", true);
                }
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('" + ex.Message + "');", true);
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
         
                //AdminAdd();
           
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            AdminDelete();
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            AdminAdd();
        }
    }
}