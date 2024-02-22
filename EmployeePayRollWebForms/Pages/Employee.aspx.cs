using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Ajax.Utilities;

namespace EmployeePayRollWebForms.Pages
{
    public partial class LoginEmp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["IdUpdate"] != null)
            {
                //ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Updated Successful');", true);
                int pass = Convert.ToInt32(Session["Id"].ToString());
                LoginUserName.Text = "Hello " + Session["Name"].ToString();
                GetEmp(pass);
            }
            if (Session["Id"] != null)
            {
                //ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Login Successful');", true);
                int pass = Convert.ToInt32(Session["Id"].ToString());
                LoginUserName.Text = "Hello " + Session["Name"].ToString();
                GetEmp(pass);
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        string connectionString = "Data Source=LAPTOP-MUFM59UB\\SQLEXPRESS;Initial Catalog=mydatabase;Integrated Security=True; Encrypt=False";


        public void GetEmp(int Name)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "refresh", "window.setTimeout('window.location.reload(true);',60000);", true);
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("sp_GetEmployeePayRollById", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Id", Name);
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    Names.Text = reader[1].ToString();
                    Id.Text = reader[0].ToString();
                    Image1.ImageUrl = reader[2].ToString();
                    Gender.Text = reader[3].ToString();
                    Department.Text = reader[4].ToString();
                    Salary.Text = reader[5].ToString();
                    Notes.Text = reader[6].ToString();
                    StartDate.Text = reader[7].ToString();
                }
                con.Close();

            }
        }

        protected void LoginEmp_Click(object sender, EventArgs e)
        {
            Session["Id"] = null;
            Session["Name"] = null;
            Session["IdUpdate"] = null;
            Response.Redirect("~/Default.aspx");
        }

        protected void Update_Click(object sender, EventArgs e)
        {
            Response.Redirect("UpdateEmp.aspx");
        }
    }
}