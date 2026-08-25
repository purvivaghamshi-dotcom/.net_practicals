using System;
using System.Data;

namespace WebControlsDemo
{
    public partial class GridViewDemo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = new DataTable();

                dt.Columns.Add("ID");
                dt.Columns.Add("Name");
                dt.Columns.Add("Course");
                dt.Columns.Add("City");

                dt.Rows.Add("101", "Purvi", "Computer Engineering", "Ahmedabad");
                dt.Rows.Add("102", "Vidhi", "IT Engineering", "Rajkot");
                dt.Rows.Add("103", "Priya", "Computer Engineering", "Surat");
                dt.Rows.Add("104", "Krina", "IT Engineering", "Vadodara");

                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }
    }
}