﻿using System.ComponentModel.DataAnnotations;

namespace DataAccess.Entity
{
    public enum Grade
    {
        A, B, C, D, F
    }
    public class Enrollment
    {
        public int EnrollmentID { get; set; }
        [Required]
        public int CourseID { get; set; }
        [Required]
        public int StudentID { get; set; }
        [DisplayFormat(NullDisplayText = "No grade")]
        public Grade? Grade { get; set; }
        public Course Course { get; set; }
        public Student Student { get; set; }
    }
}
