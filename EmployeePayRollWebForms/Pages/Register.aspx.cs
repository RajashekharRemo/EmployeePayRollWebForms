using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeePayRollWebForms.Pages
{
    public partial class Register : System.Web.UI.Page
    {
        string connectionString = "Data Source=LAPTOP-MUFM59UB\\SQLEXPRESS;Initial Catalog=mydatabase;Integrated Security=True; Encrypt=False";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitRegister_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(connectionString))
            {



                string profilestring = "";
                if (RadioButton1.Checked) {
                    profilestring = Image1.ImageUrl;
                }else if (RadioButton2.Checked) {
                    profilestring = Image2.ImageUrl;
                }else if (RadioButton3.Checked) profilestring = Image3.ImageUrl;
                else profilestring = Image4.ImageUrl;


                con.Open();
                

                SqlCommand cmd = new SqlCommand("sp_addEmpIntoEmpPayRoll", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Name", TextBox1.Text);
                cmd.Parameters.AddWithValue("@Profile", profilestring);
                cmd.Parameters.AddWithValue("@Gender", RadioButtonList2.Text);
                cmd.Parameters.AddWithValue("@Department", DropDownList1.Text);
                cmd.Parameters.AddWithValue("@Salary", TextBox3.Text);
                cmd.Parameters.AddWithValue("@Notes", TextBox2.Text);
                cmd.Parameters.AddWithValue("@StartDate", DateTimeField.Text);  // sp_UpdateEmployeePayRoll

                int affect = cmd.ExecuteNonQuery();
                if (affect > 0)
                {

                    Session["Name"] = TextBox1.Text;
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully inserted');", true);
                    Response.Redirect("EmployeeList.aspx");
                }

            }
        }

        protected void CancelRegister_Click(object sender, EventArgs e)
        {
            
        }
    }
}