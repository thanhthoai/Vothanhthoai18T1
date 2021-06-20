namespace ModelsEF.Model
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Product")]
    public partial class Product
    {
        [StringLength(50)]
        [Display(Name = " Mã sản phẩm")]
        public string ID { get; set; }

        [StringLength(50)]
        [Required(ErrorMessage = "Vui lòng nhập tên sản phẩm")]
        [Display(Name = " Tên sản phẩm")]
        public string Name { get; set; }
        [Required(ErrorMessage = "Vui lòng nhập giá")]
        [Display(Name = " Giá")]
        public double? UnitCost { get; set; }
        [Required(ErrorMessage = "Vui lòng nhập số lượng")]
        [Display(Name = " Số lượng")]
        public double? Quanlity { get; set; }
        [Required(ErrorMessage = "Vui lòng nhập mô tả")]
        [StringLength(500)]
        [Display(Name = " Mô tả")]
        public string Description { get; set; }
        [Required(ErrorMessage = "Vui lòng nhập trạng thái")]
        [StringLength(50)]
        [Display(Name = " Trạng thái")]
        public string Status { get; set; }
        [Display(Name = " Loại sản phẩm")]
        public int? Category_ID { get; set; }

        [StringLength(250)]
        public string Image { get; set; }
    }
}
