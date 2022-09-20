using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnlineVo.Entities
{
    public class Voter
    {
        public int voterId { get; set; }
        public string voterName { get; set; }
        public string fatherName { get; set; }
        public string gender { get; set; }
        public string dob { get; set; }
        public string email { get; set; }
        public string mobileno { get; set; }
        
     
        public string voterPassword { get; set; }
    }
}
