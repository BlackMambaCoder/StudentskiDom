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
        //public MongoGridFSFileInfo incomingDocument { get; set; }
        //public MongoGridFSFileInfo facultyDocument { get; set; }

        public BsonValue incomingDocumentId { get; set; }
        public BsonValue facultyDocumentId { get; set; }

        public string incomingDocumentName { get; set; }
        public string facultyDocumentName { get; set; }

        //public MongoDBRef incomeDocument { get; set; }
        //public MongoDBRef facultyDocument { get; set; }
    }
}