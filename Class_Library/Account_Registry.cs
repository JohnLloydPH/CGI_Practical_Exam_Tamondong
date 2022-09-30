using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Class_Library
{
    class Account_Registry
    {
        // SQL Connection -----
        static string MyConnectionString = ConfigurationManager.ConnectionStrings["MyDatabase"].ConnectionString;
        SqlConnection MyConnection = new SqlConnection(MyConnectionString);

        public void Add_UserAccount(string First_Name, string Last_Name, string Address, string Birthday, string Gender, string Email, string Password)
        {
            try
            {
                MyConnection.Open();
                SqlCommand SaveCommand = new SqlCommand("Add_UserData", MyConnection);
                SaveCommand.CommandType = CommandType.StoredProcedure;
                SaveCommand.Parameters.Add("@First_Name", SqlDbType.NVarChar).Value = First_Name;
                SaveCommand.Parameters.Add("@Last_Name", SqlDbType.NVarChar).Value = Last_Name;
                SaveCommand.Parameters.Add("@Address", SqlDbType.NVarChar).Value = Address;
                SaveCommand.Parameters.Add("@Birthday", SqlDbType.Date).Value = Birthday;
                SaveCommand.Parameters.Add("@Gender", SqlDbType.NVarChar).Value = Gender;
                SaveCommand.Parameters.Add("@Email", SqlDbType.NVarChar).Value = Email;
                SaveCommand.Parameters.Add("@Password", SqlDbType.NVarChar).Value = Password;
                SaveCommand.ExecuteNonQuery();
                MyConnection.Close();
            }
            catch (Exception e)
            {
                System.Console.WriteLine(e);
            }

        }
    }
}
