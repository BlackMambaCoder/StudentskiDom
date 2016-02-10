using MongoDB.Bson;
using MongoDB.Driver.Builders;
using StudentsDorm101.Data.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StudentsDorm101.Data.Services
{
    public class ContestStudentService : EntityService<ContestStudent>
    {
        private const string contestStudentCollectionName = "contestStudent";

        public void UploadContestStudent(ContestStudent student)
        {
            var collection = this.MongoConnectionHandler.getCollection(contestStudentCollectionName);

            collection.Save(student);
        }

        public ContestStudent GetContestStudent(string id)
        {
            var collection = this.MongoConnectionHandler.getCollection(contestStudentCollectionName);

            ObjectId oId = new ObjectId(id);

            var query = Query<ContestStudent>.EQ(p => p.id, oId);

            ContestStudent student = collection.Find(query).First();

            return student;
        }

        public override void Update(ContestStudent entity, string collectionName)
        {
            //throw new NotImplementedException();
        }
    }
}
