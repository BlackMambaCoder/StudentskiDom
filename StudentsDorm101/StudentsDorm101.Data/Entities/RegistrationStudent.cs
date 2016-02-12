using MongoDB.Driver.GridFS;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MongoDB.Bson.Serialization.Attributes;
using MongoDB.Bson;
using MongoDB.Driver;

namespace StudentsDorm101.Data.Entities
{
    public class RegistrationStudent : Student
    {
        public BsonValue incomingDocumentId { get; set; }
        public BsonValue facultyDocumentId { get; set; }

        public string incomingDocumentName { get; set; }
        public string facultyDocumentName { get; set; }

        public bool readChecked = false;
    }
}