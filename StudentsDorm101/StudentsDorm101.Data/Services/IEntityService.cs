using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StudentsDorm101.Data.Services
{
    using Entities;
    using MongoDB.Bson;

    public interface IEntityService<T> where T : IEntity
    {
        void Create(T entity, string collectionName);

        void Delete(ObjectId id, string collectionName);

        T GetById(ObjectId id, string collectionName);

        IEnumerable<T> GetAll(string collectionName);

        void Update(T entity, string collectionName);
    }
}
