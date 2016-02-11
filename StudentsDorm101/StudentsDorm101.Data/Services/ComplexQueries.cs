using StudentsDorm101.Data.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Linq;
using MongoDB.Driver.Builders;
using StudentsDorm101.Data.Enumerations;

namespace StudentsDorm101.Data.Services
{
    public class ComplexQueries : EntityService<ContestStudent>
    {
        private const string contestStudentCollectionName = "contestStudent";

        public void GetArrangedStudentsForRequiredDorm(EDorm dorm, int noOfStudents)
        {
            var collection = this.MongoConnectionHandler.getCollection(MongoDBNames.contestStudentCollectionName);

            var query = Query<ContestStudent>.EQ(g => g.dorm, dorm);
            var students = collection.Find(query).OrderBy(p => p.credits);
        }

        public override void Update(ContestStudent entity, string collectionName)
        {

        }
    }
}
