using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataHelper
{
    public class Account_Validation
    {
        // SQL Connection -----
        static string MyConnectionString = ConfigurationManager.ConnectionStrings["MyDataBase"].ConnectionString;
        SqlConnection MyConnection = new SqlConnection(MyConnectionString);

        // Check User Account -----
        public bool Check_UserAccount(string Username, string Password)
        {
            bool found = false;

            MyConnection.Open();
            SqlCommand ReadCommand = new SqlCommand("Check_UserData", MyConnection);
            ReadCommand.CommandType = CommandType.StoredProcedure;
            ReadCommand.Parameters.Add("@Email", SqlDbType.NVarChar).Value = Username;
            ReadCommand.Parameters.Add("@Password", SqlDbType.NVarChar).Value = Password;
            SqlDataReader DataReader;
            DataReader = ReadCommand.ExecuteReader();

            // Searching the Data ----
            while(DataReader.Read())
            {
                found = true;
                break;
            }

            MyConnection.Close();
            return found;
        }
    }
}
