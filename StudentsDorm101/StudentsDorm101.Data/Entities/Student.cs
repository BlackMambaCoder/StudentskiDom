using MongoDB.Bson;
using MongoDB.Bson.Serialization.Attributes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using StudentsDorm101.Data.Enumerations;

namespace StudentsDorm101.Data.Entities
{
    public abstract class Student
    {
        [BsonId]
        public ObjectId id { get; set; }

        public string name { get; set; }
        public string surname { get; set; }
        public EGender gender { get; set; }
        public int personalNumber { get; set; }

        public string email { get; set; }
        public int phoneNumber { get; set; }

        public string faculty { get; set; }
        public int enrollYear { get; set; }
        public int studyYear { get; set; }
        public int indexNumber { get; set; }

        public EDorm dorm { get; set; }
    }
}