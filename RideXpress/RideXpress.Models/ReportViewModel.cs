using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace RideXpress.Models
{
    //This is a POCO, or Plain Old CLR Object that represents
    //a Car, a POCO should only have properties that are represented
    //the same as the database.
    public class ReportViewModel
    {

        public int ReportID { get; set; }
        public int CarID { get; set; }
        public string Name { get; set; }
        public DateTime DateOfIncident { get; set; }
        public string ReportName { get; set; }
        public string ReportDescription { get; set; }
        public DateTime DateOfReport { get; set; } 
          
                
                
                
    }
}



