
using StudentsDorm101.Data.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace StudentsDorm101.Data
{
    public class Converter
    {
        public static ContestStudent Registration2ContestStudent(RegistrationStudent rStudent)
        {
            ContestStudent cStudent = new ContestStudent();

            cStudent.id = rStudent.id;
            cStudent.name = rStudent.name;
            cStudent.surname = rStudent.surname;
            cStudent.gender = rStudent.gender;
            cStudent.personalNumber = rStudent.personalNumber;
            cStudent.email = rStudent.email;
            cStudent.phoneNumber = rStudent.phoneNumber;
            cStudent.faculty = rStudent.faculty;
            cStudent.enrollYear = rStudent.enrollYear;
            cStudent.studyYear = rStudent.studyYear;
            cStudent.indexNumber = rStudent.indexNumber;
            cStudent.dorm = rStudent.dorm;

            return cStudent;
        }
    }
}