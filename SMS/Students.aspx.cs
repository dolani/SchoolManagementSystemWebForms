using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace SMS
{
    public partial class Students : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection myconnect = new SqlConnection(WebConfigurationManager.ConnectionStrings["smsconnection"].ConnectionString);
            myconnect.Open();
            try
            {
                SqlCommand mycommand = new SqlCommand("getallstudents", myconnect);
                mycommand.CommandType = System.Data.CommandType.StoredProcedure;
                SqlDataReader myreader = mycommand.ExecuteReader();
                StudentsGrid.DataSource = myreader;
                StudentsGrid.DataBind();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                myconnect.Close();
            }
        }

        protected void StudentsGrid_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            SqlConnection myconnect = new SqlConnection(WebConfigurationManager.ConnectionStrings["smsconnection"].ConnectionString);
            string id = StudentsGrid.DataKeys[e.RowIndex].Values["StudentId"].ToString();
            myconnect.Open();
            try
            {
                SqlCommand mycommand = new SqlCommand("getstudent", myconnect);
                mycommand.Parameters.AddWithValue("@StudentId", id);
                mycommand.CommandType = System.Data.CommandType.StoredProcedure;
                SqlDataReader myreader = mycommand.ExecuteReader();
                StudentGrid.DataSource = myreader;
                StudentGrid.DataBind();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                myconnect.Close();
            }
        }
    }
}