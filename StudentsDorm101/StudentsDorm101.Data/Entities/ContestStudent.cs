using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace StudentsDorm101.Data.Entities
{
    public class ContestStudent : Student, IEntity
    {
        public float avarageGrade { get; set; }
        public float avarageIncome { get; set; }
        public int ECTS { get; set; }
    }
}