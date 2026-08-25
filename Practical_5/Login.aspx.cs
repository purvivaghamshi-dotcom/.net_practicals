using System;
using System.Web;

namespace Practical_5
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string name = txtName.Text.Trim();
            string email = txtEmail.Text.Trim();
            string password = txtPassword.Text.Trim();

            // Check all fields
            if (name == "" || email == "" || password == "")
            {
                lblMessage.Text = "Please enter all details.";
                return;
            }

            // Store data in Session
            Session["StudentName"] = name;
            Session["StudentEmail"] = email;

            // Create Cookie
            HttpCookie studentCookie =
                new HttpCookie("StudentInfo");

            studentCookie["Name"] = name;
            studentCookie["Email"] = email;

            // Cookie will expire after 1 day
            studentCookie.Expires =
                DateTime.Now.AddDays(1);

            Response.Cookies.Add(studentCookie);

            // Redirect to Leave Application page
            Response.Redirect("LeaveApplication.aspx");
        }
    }
}