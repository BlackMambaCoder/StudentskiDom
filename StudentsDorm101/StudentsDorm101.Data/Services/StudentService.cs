using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StudentsDorm101.Data.Services
{
    using System.Collections.Generic;

    using Entities;
    using MongoDB.Bson;
    using MongoDB.Driver;
    using System.IO;
    using MongoDB.Driver.GridFS;
    using MongoDB.Driver.Builders;

    public class StudentService : EntityService<RegistrationStudent>
    {
        public void AddNewStudent(RegistrationStudent student)
        {
            var db = this.MongoConnectionHandler.dataBase;

            var incomingDoc = db.GridFS.Upload(student.incomingDocumentName);
            var facultyDoc = db.GridFS.Upload(student.facultyDocumentName);

            student.incomingDocumentName = Path.GetFileName(student.incomingDocumentName);
            student.facultyDocumentName = Path.GetFileName(student.facultyDocumentName);

            student.incomingDocumentId = incomingDoc.Id;
            student.facultyDocumentId = facultyDoc.Id;

            this.Create(student, MongoDBNames.registrationStudentCollectionName);
        }

        public RegistrationStudent GetStudentByPersonalNo(int personalNo)
        {
            IEnumerable<RegistrationStudent> students = this.GetAll(MongoDBNames.registrationStudentCollectionName);

            RegistrationStudent student = new RegistrationStudent();

            foreach (RegistrationStudent stCursor in students)
            {
                if (stCursor.personalNumber == personalNo)
                {
                    student = stCursor;
                    break;
                }
            }

            return student;
        }

        public RegistrationStudent GetStudentById(string id)
        {
            ObjectId oId = new ObjectId(id);
            RegistrationStudent student = this.GetById(oId, MongoDBNames.registrationStudentCollectionName);

            return student;
        }

        public IEnumerable<RegistrationStudent> GetAll()
        {
            return this.GetAll(MongoDBNames.registrationStudentCollectionName);
        }

        public MongoGridFSStream GetFile(string id)
        {
            ObjectId oId = new ObjectId(id);
            var stream = this.GetFileById(oId, MongoDBNames.registrationStudentCollectionName);

            return stream;
        }

        public void RemoveStudent(ObjectId id)
        {
            this.Delete(id, MongoDBNames.registrationStudentCollectionName);
        }

        public override void Update(RegistrationStudent student, string collectionName)
        {

        }
    }
}
