using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace MCF_TestCode.Models
{
    public class StorageLocation1Model
    {
        [Display(Name = "Location Id : ")]
        public string location_id { get; set; }
        [Display(Name = "Location Name : ")]
        public string location_name { get; set; }
    }
}