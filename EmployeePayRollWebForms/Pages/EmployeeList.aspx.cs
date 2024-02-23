using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.InteropServices.ComTypes;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeePayRollWebForms.Pages
{
    public partial class EmployeeList : System.Web.UI.Page
    {
        public string Name { get; set; }
        string connectionString = "Data Source=LAPTOP-MUFM59UB\\SQLEXPRESS;Initial Catalog=mydatabase;Integrated Security=True; Encrypt=False";

        protected void Page_Load(object sender, EventArgs e)
        {
            Session["Update"] = null;
            GetList();
        }

        public void GetList()
        {
            using(SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from EmployeePayRoll", con);
                SqlDataAdapter sda= new SqlDataAdapter(cmd);
                DataTable dataTable = new DataTable();
                sda.Fill(dataTable);
                GridView1.DataSource = dataTable;
                GridView1.DataBind();
                con.Close();
            }
        }

        
       

        public void DeleteEmp(int id)
        {
            using(SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("sp_DeleteEmployeePayRoll", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Id", id);
                int affected=cmd.ExecuteNonQuery();
                if(affected > 0)
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Record Deleted');", true);
                    Response.Redirect("EmployeeList.aspx");
                }
            }
        }
 
        protected void Update_control(object sender, EventArgs e)
        {
            
            
            

        }



        public void GetEmp(int Name)
        {
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("sp_GetEmployeePayRollById", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Id", Name);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dataTable = new DataTable();
                sda.Fill(dataTable);
                GridView2.DataSource = dataTable;
                GridView2.DataBind();
                con.Close();

            }
        }


        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int rowIndex = Convert.ToInt32(e.CommandArgument);
            int poNumber = Convert.ToInt32(GridView1.DataKeys[rowIndex].Values["Id"].ToString());
            if (e.CommandName == "Details")
            {               
                GetEmp(poNumber);
            }else if(e.CommandName == "Delete")
            {

                DeleteEmp(poNumber);
            }else if(e.CommandName == "Update")
            {
                Session["Update"] = poNumber;
                Response.Redirect("UpdateEmp.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using(SqlConnection con = new SqlConnection(connectionString)) { 
                 con.Open();
                SqlCommand sqlCommand = new SqlCommand("sp_GetEmpPayRoll_By_Character '"+SearchInput.Text+"%'", con);
                SqlDataAdapter reader = new SqlDataAdapter(sqlCommand);
                DataTable dataTable = new DataTable();
                reader.Fill(dataTable);
                GridView3.DataSource = dataTable;
                GridView3.DataBind();

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();
                SqlCommand sqlCommand = new SqlCommand("sp_GetEmpPayRoll_DateRange '" + DateText.Text + "' , '"+DateText2.Text+"'", con);
                SqlDataAdapter reader = new SqlDataAdapter(sqlCommand);
                DataTable dataTable = new DataTable();
                reader.Fill(dataTable);
                GridView4.DataSource = dataTable;
                GridView4.DataBind();

            }
        }
    }
}