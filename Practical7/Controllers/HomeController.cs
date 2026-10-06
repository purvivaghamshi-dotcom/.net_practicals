using System.Web.Mvc;
using Practical7.Models;

namespace Practical7.Controllers
{
    public class HomeController : Controller
    {
        // Home Page
        public ActionResult Index()
        {
            return View();
        }

        // Feedback Page
        public ActionResult Feedback()
        {
            return View();
        }

        // Submit Feedback
        [HttpPost]
        public ActionResult Feedback(StudentFeedback student)
        {
            if (ModelState.IsValid)
            {
                ViewBag.Submitted = true;
            }

            return View(student);
        }
    }
}