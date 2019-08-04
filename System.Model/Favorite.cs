using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ShoppingSystem.Model
{
    /// <summary>
    /// 收藏夹表
    /// </summary>
    public class Favorite
    {

        /// <summary>
        /// key
        /// </summary>
        public string FavoriteID { get; set; }

        /// <summary>
        /// 商品id
        /// </summary>
        public string ProductId { get; set; }

        /// <summary>
        /// 用户id
        /// </summary>
        public string UserId { get; set; }



    }
}
