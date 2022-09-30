using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataHelper;

namespace CGI_Practical_Exam_Tamondong.Web_Page
{
    public partial class Career_Page : System.Web.UI.Page
    {
        // Class Library -----
        Career_Registry MyRegistry = new Career_Registry();
        Account_Registry myAcc = new Account_Registry();

        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["ID"] != null)
            {

                MyRegistry.Career_GetData(Session["ID"].ToString());

                // SQL Connection ------
                string MyConnectionString = ConfigurationManager.ConnectionStrings["MyDatabase"].ConnectionString;
                SqlConnection MyConnection = new SqlConnection(MyConnectionString);

                MyConnection.Open();
                SqlCommand SaveCommand = new SqlCommand("Get_CareerData", MyConnection);
                SaveCommand.CommandType = CommandType.StoredProcedure;
                SaveCommand.Parameters.Add("@ID", SqlDbType.NVarChar).Value = Session["ID"].ToString();
                SqlDataReader DataReader;
                DataReader = SaveCommand.ExecuteReader();

                while (DataReader.Read())
                {
                    TxtBox_Title.Text = DataReader.GetString(1).ToString();
                    TxtBox_Organization.Text = DataReader.GetString(2).ToString();
                    TxtBox_Description.Text = DataReader.GetString(3).ToString();
                    TxtBox_Date1.Text = DataReader.GetDateTime(4).ToString();
                    TxtBox_Date2.Text = DataReader.GetDateTime(5).ToString();
                    DDL_Category2.SelectedValue = DataReader.GetString(6).ToString();

                    break;
                }

                MyConnection.Close();

            }
        }

        // Add Career -----
        protected void Add_Career(object sender, EventArgs e)
        {
            try
            {
                MyRegistry.Add_Career(TxtBox_Title.Text, TxtBox_Organization.Text, DDL_Category2.SelectedValue, TxtBox_Date1.Text, TxtBox_Date2.Text, TxtBox_Description.Text);
                Response.Write("<script>alert('Added Successfully!');</script>");
            }
            catch (Exception ex)
            {
                Console.WriteLine("{0} Exception caught.", ex);
            }
        }

        // Update Career ------
        protected void Update_Career(object sender, EventArgs e)
        {
            try
            {
                MyRegistry.Update_Career(Session["ID"].ToString(), TxtBox_Title.Text, TxtBox_Organization.Text, DDL_Category2.SelectedValue, TxtBox_Date1.Text, TxtBox_Date2.Text, TxtBox_Description.Text);
                Response.Write("<script>alert('Updated Successfully!');</script>");
            }
            catch (Exception ex)
            {
                Console.WriteLine("{0} Exception caught.", ex);
            }
        }

        // Delete Career ------
        protected void Delete_Career(object sender, EventArgs e)
        {
            try
            {
                MyRegistry.Delete_Career(Session["ID"].ToString());
                Response.Write("<script>alert('Deleted Successfully!');</script>");
            }
            catch (Exception ex)
            {
                Console.WriteLine("{0} Exception caught.", ex);
            }
        }

        // Get Career ID then Load Page ---
        protected void Career_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "career")
            {
                Session["ID"] = e.CommandArgument.ToString();

                Response.Redirect("Career_Page.aspx?id=" + e.CommandArgument.ToString());
            }
        }
    }
}