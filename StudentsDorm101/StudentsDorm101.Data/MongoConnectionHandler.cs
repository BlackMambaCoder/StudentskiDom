using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StudentsDorm101.Data
{
    using Entities;
    using MongoDB.Driver;

    public class MongoConnectionHandler<TObject> where TObject : IEntity
    {
        private MongoServer server { get; set; }
        public MongoDatabase dataBase { get; set; }

        public MongoConnectionHandler()
        {
            this.server = MongoServer.Create(MongoDBNames.connectionString);
            this.dataBase = this.server.GetDatabase(MongoDBNames.DataBaseName);
        }

        public MongoCollection<TObject> getCollection(string collectionName)
        {
            return this.dataBase.GetCollection<TObject>(collectionName);
        }
    }
}
