namespace ModelsEF.Model
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("UserAccount")]
    public partial class UserAccount
    {
        [StringLength(50)]
        [Display(Name = " Mã người dùng")]
        public string ID { get; set; }
        [Display(Name = " Tên người dùng")]
        [StringLength(50)]
        public string UserName { get; set; }
        [Display(Name = " Mật khẩu")]
        [StringLength(50)]
        public string Password { get; set; }
        [Display(Name = " Trạng thái")]
        [StringLength(10)]
        public string Status { get; set; }
    }
}