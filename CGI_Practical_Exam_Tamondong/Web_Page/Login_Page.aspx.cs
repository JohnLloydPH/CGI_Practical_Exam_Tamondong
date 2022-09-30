using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataHelper;

namespace CGI_Practical_Exam_Tamondong
{
    public partial class Login_Page : System.Web.UI.Page
    {

        // Class Library -----
        Account_Validation myValidation = new Account_Validation();

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        // Login Account -----
        protected void Login_Account(object sender, EventArgs e)
        {
            try
            {
                if(myValidation.Check_UserAccount(TxtBox_Username.Text, TxtBox_Password.Text))
                {
                    Response.Redirect("Home_Page.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid Username or Password!');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}