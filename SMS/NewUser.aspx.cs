using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Web.Configuration;

namespace SMS
{
    public partial class NewUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void CreateStudentButton_Click (object sender, EventArgs e)
        {
            SqlConnection myconnect = new SqlConnection(WebConfigurationManager.ConnectionStrings["smsconnection"].ConnectionString);
            string FirstName = FirstNameTextBox.Text;
            string LastName = LastNameTextBox.Text;
            string Gender = GenderRadDropDownList.SelectedText;
            try
            {
                SqlCommand mycommand = new SqlCommand("createnewstudent", myconnect);
                mycommand.Parameters.AddWithValue("@FirstName", FirstName);
                mycommand.Parameters.AddWithValue("@LastName", LastName);
                mycommand.Parameters.AddWithValue("@Gender", Gender);

                mycommand.CommandType = System.Data.CommandType.StoredProcedure;
                myconnect.Open();
                mycommand.ExecuteNonQuery();

            }
            catch (Exception er)
            {
                throw er;
            }
            finally
            {
                myconnect.Close();
            }
            Response.Write("New Student Record inserted Successfully");
        }

    }
}