using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StudentsDorm101.Data.Entities
{
    public class TenantStudent : Student
    {
        public string roomNumber { get; set; }
        public List<List<string>> amountPayed { get; set; }
    }
}
