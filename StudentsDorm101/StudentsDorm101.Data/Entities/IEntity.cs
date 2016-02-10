using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MongoDB.Bson;

namespace StudentsDorm101.Data.Entities
{
    public interface IEntity
    {
        ObjectId id { get; set; }
    }
}
