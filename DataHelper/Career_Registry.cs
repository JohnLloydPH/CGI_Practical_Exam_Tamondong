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
    public class Career_Registry
    {
        // Variable
        private static string career_title, career_organization, career_description, career_start_date, career_end_date, career_category;


        // SQL Connection ------
        static string MyConnectionString = ConfigurationManager.ConnectionStrings["MyDatabase"].ConnectionString;
        SqlConnection MyConnection = new SqlConnection(MyConnectionString);

        #region Encapsulation
        public static string Career_title { get => career_title; set => career_title = value; }
        public static string Career_organization { get => career_organization; set => career_organization = value; }
        public static string Career_description { get => career_description; set => career_description = value; }
        public static string Career_start_date { get => career_start_date; set => career_start_date = value; }
        public static string Career_end_date { get => career_end_date; set => career_end_date = value; }
        public static string Career_category { get => career_category; set => career_category = value; }
        #endregion

        // Add Career Method ------
        public void Add_Career(string Title, string Organization, string Category, string Start_Date, string End_Date, string Description)
        {
            try
            {
                MyConnection.Open();
                SqlCommand SaveCommand = new SqlCommand("Add_CareerData", MyConnection);
                SaveCommand.CommandType = CommandType.StoredProcedure;
                SaveCommand.Parameters.Add("@Name", SqlDbType.NVarChar).Value = Title;
                SaveCommand.Parameters.Add("@Organization", SqlDbType.NVarChar).Value = Organization;
                SaveCommand.Parameters.Add("@Description", SqlDbType.NVarChar).Value = Description;
                SaveCommand.Parameters.Add("@Target_Date", SqlDbType.Date).Value = Start_Date;
                SaveCommand.Parameters.Add("@Completed_Date", SqlDbType.Date).Value = End_Date;
                SaveCommand.Parameters.Add("@Category", SqlDbType.NVarChar).Value = Category;
                SaveCommand.ExecuteNonQuery();
                MyConnection.Close();
            }
            catch (Exception e)
            {
                System.Console.WriteLine(e);
            }

        }

        // Update Career Method ------
        public void Update_Career(string ID, string Title, string Organization, string Category, string Start_Date, string End_Date, string Description)
        {
            try
            {
                MyConnection.Open();
                SqlCommand SaveCommand = new SqlCommand("Update_CareerData", MyConnection);
                SaveCommand.CommandType = CommandType.StoredProcedure;
                SaveCommand.Parameters.Add("@ID", SqlDbType.NVarChar).Value = ID;
                SaveCommand.Parameters.Add("@Name", SqlDbType.NVarChar).Value = Title;
                SaveCommand.Parameters.Add("@Organization", SqlDbType.NVarChar).Value = Organization;
                SaveCommand.Parameters.Add("@Description", SqlDbType.NVarChar).Value = Description;
                SaveCommand.Parameters.Add("@Target_Date", SqlDbType.NVarChar).Value = Start_Date;
                SaveCommand.Parameters.Add("@Completed_Date", SqlDbType.NVarChar).Value = End_Date;
                SaveCommand.Parameters.Add("@Category", SqlDbType.NVarChar).Value = Category;
                SaveCommand.ExecuteNonQuery();
                MyConnection.Close();
            }
            catch (Exception e)
            {
                System.Console.WriteLine(e);
            }

        }

        // Delete Career Method ------
        public void Delete_Career(string ID)
        {
            try
            {
                MyConnection.Open();
                SqlCommand SaveCommand = new SqlCommand("Delete_CareerData", MyConnection);
                SaveCommand.CommandType = CommandType.StoredProcedure;
                SaveCommand.Parameters.Add("@ID", SqlDbType.NVarChar).Value = ID;
                SaveCommand.ExecuteNonQuery();
                MyConnection.Close();
            }
            catch (Exception e)
            {
                System.Console.WriteLine(e);
            }

        }

        // Get the Career Information -----
        public bool Career_GetData(string ID)
        {
            bool found = false;

            MyConnection.Open();
            SqlCommand SaveCommand = new SqlCommand("Get_CareerData", MyConnection);
            SaveCommand.CommandType = CommandType.StoredProcedure;
            SaveCommand.Parameters.Add("@ID", SqlDbType.NVarChar).Value = ID;
            SqlDataReader DataReader;
            DataReader = SaveCommand.ExecuteReader();
            while (DataReader.Read())
            {
                // Get User Data
                career_title = DataReader.GetString(1).ToString();
                career_organization = DataReader.GetString(2).ToString();
                career_description = DataReader.GetString(3).ToString();
                career_start_date = DataReader.GetDateTime(4).ToString();
                career_end_date = DataReader.GetDateTime(5).ToString();
                career_category = DataReader.GetString(6).ToString();

                // Find User Account
                found = true;
                break;
            }

            MyConnection.Close();
            return found;
        }
    }
}
