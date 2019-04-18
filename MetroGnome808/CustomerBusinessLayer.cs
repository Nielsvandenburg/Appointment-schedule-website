using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
namespace MetroGnome808.Models
{
    public class CustomerBusinessLayer
    {
        public IEnumerable<Person> Customers
        {
            //create get accessor method
            get
            {
                String connString = ConfigurationManager.ConnectionStrings["PersonCon"].ConnectionString;
                List<Person> cust = new List<Person>();
                using (SqlConnection con = new SqlConnection(connString))
                {
                    SqlCommand cmd = new SqlCommand("Select * from Person", con);
                    cmd.CommandType = CommandType.Text;
                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    while (reader.Read())
                    {
                        Person customer = new Person();
                        customer.firstname = reader[1].ToString();
                        customer.artistname = reader[2].ToString();
                        customer.email = reader[3].ToString();
                        cust.Add(customer);
                    }
                    return cust;

                }


            }
        }
       
        public void AddCustomer(Person customer)
        {
            String connString = ConfigurationManager.ConnectionStrings["CustomerCon"].ConnectionString;
            using (SqlConnection sqlCon = new SqlConnection(connString))
            {
                SqlCommand command = new SqlCommand("spAddCustomer", sqlCon);
                command.CommandType = CommandType.StoredProcedure;

                SqlParameter paramFirstName = new SqlParameter
                {
                    ParameterName = "@firstname",
                    Value = customer.firstname
                };
                command.Parameters.Add(paramFirstName);

                SqlParameter paramLastName = new SqlParameter
                {
                    ParameterName = "@lastname",
                    Value = customer.artistname
                };
                command.Parameters.Add(paramLastName);

                SqlParameter paramStreet = new SqlParameter
                {
                    ParameterName = "@email",
                    Value = customer.email
                };
                sqlCon.Open();
                command.ExecuteNonQuery();

            }

        }
    }

}
