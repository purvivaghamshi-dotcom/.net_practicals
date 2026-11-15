
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web.Mvc;
using Practical9.Models;

namespace Practical9.Controllers
{
    public class PlacementController : Controller
    {
        public ActionResult Index()
        {
            PlacementDashboard dashboard =
                new PlacementDashboard();

            List<Student> students = new List<Student>();

            string cs = ConfigurationManager
                .ConnectionStrings["cs"].ConnectionString;

            using (SqlConnection con = new SqlConnection(cs))
            {
                string query = "SELECT * FROM Students";

                SqlCommand cmd = new SqlCommand(query, con);

                con.Open();

                SqlDataReader dr = cmd.ExecuteReader();

                while (dr.Read())
                {
                    Student s = new Student();

                    s.StudentId = Convert.ToInt32(dr["StudentId"]);

                    s.StudentName = dr["StudentName"].ToString();

                    s.Branch = dr["Branch"].ToString();

                    s.CompanyName = dr["CompanyName"] == DBNull.Value
                        ? "Not Placed"
                        : dr["CompanyName"].ToString();

                    s.Package = Convert.ToDecimal(dr["Package"]);

                    s.Status = dr["Status"].ToString();

                    students.Add(s);
                }

                dr.Close();
            }

            dashboard.Students = students;

            dashboard.TotalStudents = students.Count;

            dashboard.PlacedStudents = students.Count(
                x => x.Status == "Placed");

            dashboard.TotalCompanies = students
                .Where(x => x.Status == "Placed")
                .Select(x => x.CompanyName)
                .Distinct()
                .Count();

            dashboard.PlacementPercentage =
                dashboard.TotalStudents > 0
                ? (double)dashboard.PlacedStudents /
                    dashboard.TotalStudents * 100
                : 0;

            return View(dashboard);
        }
    }
}
