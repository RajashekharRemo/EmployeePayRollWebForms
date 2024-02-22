using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeePayRollWebForms.Pages
{
    public partial class UpdateEmp : System.Web.UI.Page
    {
        string connectionString = "Data Source=LAPTOP-MUFM59UB\\SQLEXPRESS;Initial Catalog=mydatabase;Integrated Security=True; Encrypt=False";
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["Update"] != null)
            {
                int pass = Convert.ToInt32(Session["Update"].ToString());
                GetEmp(pass);
            }else if (Session["Id"] != null)
            {
                int pass = Convert.ToInt32(Session["Id"].ToString());
                GetEmp(pass);
            }

        }

        public void GetEmp(int NameId)
        {
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("sp_GetEmployeePayRollById", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Id", NameId);
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    TextBox1.Text = reader[1].ToString();
                    RadioButtonList2.Text = reader[3].ToString();
                    DropDownList1.Text = reader[4].ToString();
                    TextBox3.Text = reader[5].ToString();
                    TextBox2.Text = reader[6].ToString();
                }
                con.Close();

            }
        }

        protected void SubmitRegister_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(connectionString))
            {

                string profilestring = "";
                if (RadioButton1.Checked)
                {
                    profilestring = Image1.ImageUrl;
                }
                else if (RadioButton2.Checked)
                {
                    profilestring = Image2.ImageUrl;
                }
                else if (RadioButton3.Checked) profilestring = Image3.ImageUrl;
                else profilestring = Image4.ImageUrl;


                con.Open();


                SqlCommand cmd = new SqlCommand("sp_UpdateEmployeePayRoll", con);
                cmd.CommandType = CommandType.StoredProcedure;

                if (Session["Update"] != null)
                {
                    cmd.Parameters.AddWithValue("@Id", Convert.ToInt32(Session["Update"].ToString()));
                }
                else if (Session["Id"] != null)
                {
                    cmd.Parameters.AddWithValue("@Id", Convert.ToInt32(Session["Id"].ToString()));
                }


                cmd.Parameters.AddWithValue("@Name", TextBox1.Text);
                cmd.Parameters.AddWithValue("@ProfileImage", profilestring);
                cmd.Parameters.AddWithValue("@Gender", RadioButtonList2.Text);
                cmd.Parameters.AddWithValue("@Department", DropDownList1.Text);
                cmd.Parameters.AddWithValue("@Salary", TextBox3.Text);
                cmd.Parameters.AddWithValue("@Notes", TextBox2.Text);
                cmd.Parameters.AddWithValue("@StartDate", Convert.ToDateTime(DateTimeField.Text.ToString()));  // sp_UpdateEmployeePayRoll

                int affect = cmd.ExecuteNonQuery();
                if (affect > 0)
                {
                    if (Session["Update"] != null)
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Updated');", true);
                        Response.Redirect("EmployeeList.aspx");
                    }
                    else if (Session["Id"] != null)
                    {
                        Session["IdUpdate"] = Session["Id"];
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Updated');", true);
                        Response.Redirect("Employee.aspx");
                    }
                    
                }

            }
        }

        protected void CancelRegister_Click(object sender, EventArgs e)
        {
            
        }

        protected void Back_Click(object sender, EventArgs e)
        {
            if (Session["Update"] != null)
            {
                Response.Redirect("EmployeeList.aspx");
            }
            else if (Session["Id"] != null)
            {
                Response.Redirect("Employee.aspx");
            }
        }
    }
}