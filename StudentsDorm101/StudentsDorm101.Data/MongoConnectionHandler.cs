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
        private string connectionString { get; set; }
        private MongoServer server { get; set; }
        public MongoDatabase dataBase { get; set; }
        public string dataBaseName { get; set; }

        public MongoConnectionHandler()
        {
            this.connectionString = "mongodb://localhost/?safe=true";
            this.server = MongoServer.Create(this.connectionString);
            this.dataBaseName = "studentskiDom";
            this.dataBase = this.server.GetDatabase(this.dataBaseName);
        }

        public MongoCollection<TObject> getCollection(string collectionName)
        {
            return this.dataBase.GetCollection<TObject>(collectionName);
        }
    }
}
