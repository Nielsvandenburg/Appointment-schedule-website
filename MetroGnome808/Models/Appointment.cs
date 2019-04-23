using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MetroGnome808.Models
{
    public class Appointment
    {
        public int AppointmentId { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string PublishingTitle { get; set; }
        public string Email { get; set; }
        public int PhoneNumber { get; set; }
        public DateTime AppointmentTime { get; set; }



    }
   
}