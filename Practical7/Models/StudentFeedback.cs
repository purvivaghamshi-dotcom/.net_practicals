using System.ComponentModel.DataAnnotations;

namespace Practical7.Models
{
    public class StudentFeedback
    {
        [Required(ErrorMessage = "Please enter your name")]
        public string Name { get; set; }

        [Required(ErrorMessage = "Please enter your email")]
        [EmailAddress(ErrorMessage = "Please enter a valid email")]
        public string Email { get; set; }

        [Required(ErrorMessage = "Please enter your age")]
        [Range(18, 60, ErrorMessage = "Age must be between 18 and 60")]
        public int? Age { get; set; }

        [Required(ErrorMessage = "Please enter your mobile number")]
        [RegularExpression(@"^[0-9]{10}$",
            ErrorMessage = "Mobile number must contain 10 digits")]
        public string Mobile { get; set; }

        public bool IsAvailable { get; set; }
    }
}