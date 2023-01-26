using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace MCF_TestCode.Models
{
    public class UserModel
    {
        [Display(Name = "User Name : ")]
        public string user_name { get; set; }
        [Display(Name = "Password : ")]
        [DataType(DataType.Password)]
        public string password { get; set; }
        public string user_type { get; set; }
    }
}