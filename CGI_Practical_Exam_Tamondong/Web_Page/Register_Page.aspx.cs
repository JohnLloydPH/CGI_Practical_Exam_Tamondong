using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataHelper;

namespace CGI_Practical_Exam_Tamondong.Web_Page
{

    public partial class Register_Page : System.Web.UI.Page
    {
        // Class Library -----
        Account_Registry MyRegistry = new Account_Registry();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // Register Account -----
        protected void Register_Account(object sender, EventArgs e)
        {
            try
            {
                MyRegistry.Add_UserAccount(TxtBox_First_Name.Text, TxtBox_Last_Name.Text, TxtBox_Address.Text, TxtBox_Birthday.Text, DrpDwn_Gender.SelectedValue, TxtBox_Email.Text, TxtBox_Password.Text);
                Server.Transfer("Login_Page.aspx", true);
            }
            catch (Exception ex)
            {
                Console.WriteLine("{0} Exception caught.", ex);
            }
        }
    }
}