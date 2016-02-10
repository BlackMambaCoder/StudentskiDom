using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StudentsDorm101.Data.Entities
{
    using Enumerations;
    using MongoDB.Bson.Serialization.Attributes;

    public interface IStudent
    {
        string name { get; set; }
        string surname { get; set; }
        EGender gender { get; set; }
        [BsonId]
        int personalNumber { get; set; }

        string email { get; set; }
        int phoneNumber { get; set; }

        string faculty { get; set; }
        int enrollYear { get; set; }
        int studyYear { get; set; }
        int indexNumber { get; set; }

        EDorm dorm { get; set; }
    }
}
