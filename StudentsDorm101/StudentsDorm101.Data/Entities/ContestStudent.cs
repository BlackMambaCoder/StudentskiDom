using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace StudentsDorm101.Data.Entities
{
    public class ContestStudent : Student
    {
        public double avarageGrade { get; set; }
        public double avarageIncome { get; set; }
        public int ECTS { get; set; }
        public double credits { get; set; }

        public void SetCredit()
        {
            this.credits = avarageGrade * (double)ECTS / (double)studyYear + ((avarageIncome < 15000.0) ? 1.0 : 0.0);
        }
    }
}