using System;

namespace Practical_5
{
    public partial class LeaveApplication : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Load student details only when page opens
            if (!IsPostBack)
            {
                // Get name from Session
                if (Session["StudentName"] != null)
                {
                    txtStudentName.Text =
                        Session["StudentName"].ToString();
                }

                // Get email from Session
                if (Session["StudentEmail"] != null)
                {
                    txtEmail.Text =
                        Session["StudentEmail"].ToString();
                }
            }
        }


        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Check required fields

            if (txtRollNo.Text.Trim() == "" ||
                ddlLeaveType.SelectedValue == "" ||
                txtFromDate.Text == "" ||
                txtToDate.Text == "" ||
                txtReason.Text.Trim() == "")
            {
                lblSuccess.Text =
                    "Please fill all the details.";

                lblSuccess.ForeColor =
                    System.Drawing.Color.Red;

                pnlResult.Visible = true;

                return;
            }


            // Show success message

            lblSuccess.Text =
                "Leave Application Submitted Successfully!";

            lblSuccess.ForeColor =
                System.Drawing.Color.Green;


            // Display all entered details

            lblDetails.Text =
                "<b>Student Name:</b> "
                + Server.HtmlEncode(txtStudentName.Text)
                + "<br/><br/>"

                + "<b>Roll Number:</b> "
                + Server.HtmlEncode(txtRollNo.Text)
                + "<br/><br/>"

                + "<b>Email:</b> "
                + Server.HtmlEncode(txtEmail.Text)
                + "<br/><br/>"

                + "<b>Leave Type:</b> "
                + Server.HtmlEncode(ddlLeaveType.SelectedValue)
                + "<br/><br/>"

                + "<b>From Date:</b> "
                + Server.HtmlEncode(txtFromDate.Text)
                + "<br/><br/>"

                + "<b>To Date:</b> "
                + Server.HtmlEncode(txtToDate.Text)
                + "<br/><br/>"

                + "<b>Reason:</b> "
                + Server.HtmlEncode(txtReason.Text);


            // Display result panel

            pnlResult.Visible = true;
        }
    }
}