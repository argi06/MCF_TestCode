using MCF_TestCode.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MCF_TestCode.Controllers
{
    public class HomeController : Controller
    {
        Transaction_DBEntities objTransaction_DBEntities = new Transaction_DBEntities();
        public ActionResult Index()
        {
            Bpkb1Model objBpkb1Model = new Bpkb1Model();
            Bpkb2Model objBpkb2Model = new Bpkb2Model();
            return View();
        }

        [HttpPost]
        public ActionResult Index(Bpkb1Model objBpkb1Model)
        {
            string queryString = "select user_type from ms_user where user_name = '" + Session["user_name"] + "'";
            string connectionString = "Server=localhost;initial catalog=Transaction_DB;User Id=sa;Password=p455word!;";
            string temp = null;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand(queryString, connection);
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                try
                {
                    while (reader.Read())
                    {
                        temp = reader["user_type"].ToString();
                    }
                }
                finally
                {
                    // Always call Close when done reading.
                    reader.Close();
                }
            }
            if (temp.ToString() == "001")
            {
                tr_bpkb1 obj1 = new tr_bpkb1();
                obj1.agreement_number = objBpkb1Model.agreement_number;
                //obj1.bpkb_date = objBpkb1Model.bpkb_date;
                obj1.bpkb_date = DateTime.Now;
                //obj1.bpkb_date_in = objBpkb1Model.bpkb_date_in;
                obj1.bpkb_date_in = DateTime.Now;
                obj1.bpkb_no = objBpkb1Model.bpkp_no;
                obj1.branch_id = objBpkb1Model.branch_id;
                //obj1.faktur_date = objBpkb1Model.faktur_date;
                obj1.faktur_date = DateTime.Now;
                obj1.faktur_no = objBpkb1Model.faktur_no;
                obj1.location_id = objBpkb1Model.location_id;
                obj1.police_no = objBpkb1Model.police_no;

                objTransaction_DBEntities.tr_bpkb1.Add(obj1);
                objTransaction_DBEntities.SaveChanges();
            }
            else if (temp.ToString() == "002")
            {
                tr_bpkb2 obj2 = new tr_bpkb2();
                obj2.agreement_number = objBpkb1Model.agreement_number;
                obj2.bpkb_date = objBpkb1Model.bpkb_date;
                //obj2.bpkb_date = DateTime.Now;
                obj2.bpkb_date_in = objBpkb1Model.bpkb_date_in;
                //obj2.bpkb_date_in = DateTime.Now;
                obj2.bpkb_no = objBpkb1Model.bpkp_no;
                obj2.branch_id = objBpkb1Model.branch_id;
                obj2.faktur_date = objBpkb1Model.faktur_date;
                //obj2.faktur_date = DateTime.Now;
                obj2.faktur_no = objBpkb1Model.faktur_no;
                obj2.location_id = objBpkb1Model.location_id;
                obj2.police_no = objBpkb1Model.police_no;

                objTransaction_DBEntities.tr_bpkb2.Add(obj2);
                objTransaction_DBEntities.SaveChanges();
            }
            return View();

            //return View();
        }

        public ActionResult GetLocationCombobox()
        {
            string queryString = "select * from ms_storage_location1";
            string connectionString = "Server=localhost;initial catalog=Transaction_DB;User Id=sa;Password=p455word!;";
            //string[] kode = null;
            //string lokasi = null;
            List<string> temp = new List<string>();
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand(queryString, connection);
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                try
                {
                    while (reader.Read())
                    {
                        string[] kode = { reader["location_id"].ToString(),reader["location_name"].ToString()};
                        //lokasi = reader["location_name"].ToString();
                        temp.AddRange(kode);
                    }
                }
                finally
                {
                    // Always call Close when done reading.
                    reader.Close();
                }
            }
            return Json(temp);
        }
    }
}