using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StudentsDorm101.Data.Services
{
    using MongoDB.Bson;
    using MongoDB.Driver;
    using Entities;
    using MongoDB.Driver.Linq;
    using MongoDB.Driver.Builders;
using MongoDB.Driver.GridFS;

    public abstract class EntityService<T> : IEntityService<T> where T : IEntity
    {
        protected readonly MongoConnectionHandler<T> MongoConnectionHandler;

        protected EntityService()
        {
            MongoConnectionHandler = new MongoConnectionHandler<T>();
        }

        public virtual void Create(T entity, string collectionName)
        {
            var result = this.MongoConnectionHandler.getCollection(collectionName).Save(
                entity);

            //if (!result.
            //{
            //    //// Something went wrong
            //}

            //var collection = this.MongoConnectionHandler.getCollection("student");

            //var query = Query<RegistrationStudent>.EQ(p => p.id, entity.id);
            //var item = result.Find(query);

            //if (item.Count() != 0)
            //{
            //    collection.Insert(entity);
            //}
        }

        public virtual void Delete(ObjectId id, string collectionName)
        {
            var query = Query<T>.EQ(e => e.id, id);
            var result = this.MongoConnectionHandler.getCollection(collectionName).Remove(query);

            if (!result.Ok)
            {
                //// Something went wrong
            }
        }

        public virtual T GetById(ObjectId id, string collectionName)
        {
            //var entityQuery = Query<T>.EQ(e => e.id, id);
            var collection = this.MongoConnectionHandler.getCollection(collectionName);

            //var linqQuery = from registrationStudent in collection.AsQueryable<T>()
            //                where registrationStudent.id == id
            //                select registrationStudent;

            //T result = linqQuery.First<T>();

            var res = collection.FindAll();

            long c = res.Count();

            try
            {
                T s = res.First<T>();
            }
            catch (Exception ex)
            {

            }

            return res.First();
        }
 
        public abstract void Update(T entity, string collectionName);

        public virtual IEnumerable<T> GetAll(string collectionName)
        {
            return this.MongoConnectionHandler.getCollection(collectionName).FindAll();
        }

        public virtual MongoGridFSStream GetFileById(ObjectId id, string collectionName)
        {
            var file = this.MongoConnectionHandler.dataBase.GridFS.FindOne(Query.EQ("_id", id));

            MongoGridFSStream stream = file.OpenRead();

            return stream;
        }
    }
}
