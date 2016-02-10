using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MongoDB.Bson;
using MongoDB.Bson.Serialization.Attributes;

namespace StudentsDorm101.Data.Entities
{
    public class Entity : IEntity
    {
        [BsonId]
        public ObjectId id { get; set; }
    }
}