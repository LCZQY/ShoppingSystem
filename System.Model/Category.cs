using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ShoppingSystem.Model
{
    /// <summary>
    /// 商品类别表
    /// </summary>
    public class Category
    {

        /// <summary>
        /// key
        /// </summary>
        public string CateId { get; set; }

        /// <summary>
        /// 类别名
        /// </summary>
        public string CateName { get; set; }

        /// <summary>
        /// 上级类别编号
        /// </summary>
        public string ParentId { get; set; }
    }
}
