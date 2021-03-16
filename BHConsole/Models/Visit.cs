using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BHConsole.Models
{
    public class Visit
    {
        public int FirstVisit { get; set; }
        public int NumberOfChildren { get; set; }
        public string CaseWorkerName { get; set; }
        public int RelationToChildren { get; set; }
        public string RelationOtherDescription { get; set; }

    }
}