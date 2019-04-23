using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MetroGnome808.Models;

namespace InClass0228.Controllers
{
    public class CustomerController : Controller
    {
        // GET: Customer
        public ActionResult Index()
        {
            CustomerBusinessLayer customerBusiness = new CustomerBusinessLayer();
            List<Person> customer = customerBusiness.Customers.ToList();
            return View(customer);
        }
        [HttpGet]
        public ActionResult Create()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Create(string firstname, string lastname, string email)
        {
            CustomerBusinessLayer customerBusiness = new CustomerBusinessLayer();
            Person customer = new Person();
            customer.firstname = firstname;
            customer.artistname = lastname;
            customer.email = email;
           
            customerBusiness.AddCustomer(customer);

            return RedirectToAction("Index");
        }
        
    }
}