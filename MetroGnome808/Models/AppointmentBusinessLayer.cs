using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

namespace MetroGnome808.Models
{

    public class AppointmentBusinessLayer
    {

        public IEnumerable<Appointment> Appointments
        {

            get
            {
                string connString = ConfigurationManager.ConnectionStrings["AppointmentCon"].ConnectionString;
                List<Appointment> AppointmentList = new List<Appointment>();
                using (SqlConnection sqlCon = new SqlConnection(connString))
                {
                    SqlCommand command = new SqlCommand("Select * from Appointment", sqlCon);
                    command.CommandType = System.Data.CommandType.Text;

                    sqlCon.Open();

                    SqlDataReader reader = command.ExecuteReader();


                    while (reader.Read())
                    {
                        Appointment objApp = new Appointment();
                        objApp.AppointmentId = Convert.ToInt32(reader[0]);
                        objApp.FirstName = reader[1].ToString();
                        objApp.LastName = reader[2].ToString();
                        objApp.PublishingTitle = reader[3].ToString();
                        objApp.Email = reader[4].ToString();
                        objApp.PhoneNumber = Convert.ToInt32(reader[5]);
                        objApp.AppointmentTime = Convert.ToDateTime(reader[6]);
                        AppointmentList.Add(objApp);



                    }
                }
                return AppointmentList;

            }

        }

    }
}