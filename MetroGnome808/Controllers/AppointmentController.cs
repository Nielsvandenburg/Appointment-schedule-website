using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MetroGnome808.Models;


namespace MetroGnome808.Controllers
{
    public class AppointmentController : Controller
    {
        // GET: Appointment
        public ActionResult Index()
        {
            AppointmentBusinessLayer appointmentBusiness = new AppointmentBusinessLayer();
            List<Appointment> Appointments = appointmentBusiness.Appointments.ToList<Appointment>();

            return View(Appointments);
        }
        
    }
}