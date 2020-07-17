﻿using System.ComponentModel.DataAnnotations;

namespace ConsoleApp.DataAccess.Entity
{
    public class OfficeAssignment
    {
        [Key] 
        public int InstructorID { get; set; }
        [StringLength(50)]
        [Display(Name = "Office Location")]
        public string Location { get; set; }

        public Instructor Instructor { get; set; }
    }
}
