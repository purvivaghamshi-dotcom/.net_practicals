using System;
using System.Web.UI;

namespace WebApplication1
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Code runs when the page loads initially
        }

        // Handles the Submit Button Click
        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text;
            string password = txtPassword.Text; // In production, never output plain passwords
            string dateSelected = txtDate.Text;
            string gender = rblGender.SelectedItem != null ? rblGender.SelectedItem.Text : "Not Selected";
            string city = lbCity.SelectedItem != null ? lbCity.SelectedItem.Text : "Not Selected";

            // Format collected text into the display label block
            lblDisplay.Text = $"<h3>Entered Data Summary:</h3>" +
                              $"<strong>Username:</strong> {username}<br />" +
                              $"<strong>Password:</strong> {password}<br />" +
                              $"<strong>Date:</strong> {dateSelected}<br />" +
                              $"<strong>Gender:</strong> {gender}<br />" +
                              $"<strong>City:</strong> {city}";

            lblDisplay.Visible = true;
        }

        // Optional logic for Image Button 1
        protected void ImgBtnFeature1_Click(object sender, ImageClickEventArgs e)
        {
            lblDisplay.Text = "Image Button A was clicked!";
            lblDisplay.Visible = true;
        }

        // Optional logic for Image Button 2
        protected void ImgBtnFeature2_Click(object sender, ImageClickEventArgs e)
        {
            lblDisplay.Text = "Image Button B was clicked!";
            lblDisplay.Visible = true;
        }
    }
}
