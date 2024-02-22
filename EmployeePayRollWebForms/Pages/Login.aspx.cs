using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Runtime.InteropServices.ComTypes;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace EmployeePayRollWebForms.Pages
{
    public partial class Login : System.Web.UI.Page
    {
        string connectionString = "Data Source=LAPTOP-MUFM59UB\\SQLEXPRESS;Initial Catalog=mydatabase;Integrated Security=True; Encrypt=False";
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("sp_GetEmpPayRoll_By_Name", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Name", TextBox2.Text);
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    if (reader[0].ToString() == TextBox1.Text && reader[1].ToString() == TextBox2.Text)
                    {
                        Session["Id"] = reader[0].ToString();
                        Session["Name"] = reader[1].ToString();
                        
                        Response.Redirect("Employee.aspx");
                    }
                    else
                    {
                        Response.Redirect("/Pages/Login.aspx");
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Login UnSuccessful');", true);
                    }
                }
                con.Close();

            }
        }

        
    }
}