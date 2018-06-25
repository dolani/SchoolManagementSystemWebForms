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
    public partial class Subjects : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection myconnect = new SqlConnection(WebConfigurationManager.ConnectionStrings["smsconnection"].ConnectionString);
            myconnect.Open();
            try
            {
                SqlCommand mycommand = new SqlCommand("getallsubjects", myconnect);
                mycommand.CommandType = System.Data.CommandType.StoredProcedure;
    
                SqlDataReader myreader = mycommand.ExecuteReader();
                SubjectsRadGrid.DataSource = myreader;
                SubjectsRadGrid.DataBind();
            }
            catch(Exception ex)
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