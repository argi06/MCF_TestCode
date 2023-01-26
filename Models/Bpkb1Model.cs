using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace MCF_TestCode.Models
{
    public class Bpkb1Model
    {
        [Display(Name = "Agreement Number : ")]
        public string agreement_number { get; set; }
        [Display(Name = "BPKB Number : ")]
        public string bpkp_no { get; set; }
        [Display(Name = "Branch Id : ")]
        public string branch_id { get; set; }
        [Display(Name = "BPKB Date : ")]
        public DateTime bpkb_date { get; set; }
        [Display(Name = "Faktur Number : ")]
        public string faktur_no { get; set; }
        [Display(Name = "Faktur Date : ")]
        public DateTime faktur_date { get; set; }
        [Display(Name = "Location Id : ")]
        public string location_id { get; set; }
        [Display(Name = "Police Number : ")]
        public string police_no { get; set; }
        [Display(Name = "BPKB Date In : ")]
        public DateTime bpkb_date_in { get; set; }
    }
}