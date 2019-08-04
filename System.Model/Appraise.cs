using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

/// <summary>
/// 数据模型层
/// </summary>
namespace ShoppingSystem.Model
{
    /// <summary>
    /// 商品评价表
    /// </summary>
    public class Appraise
    {
        /// <summary>
        /// Key
        /// </summary>
        public int AppraiseId { get; set; }
        /// <summary>
        /// 用户id
        /// </summary>
        public int UserId { get; set; }
        /// <summary>
        /// 商品ID
        /// </summary>
        public int ProductId { get; set; }

        /// <summary>
        /// 评价等级
        /// </summary>
        public EnumGrade Grade { get; set; }

        /// <summary>
        /// 评价时间
        /// </summary>
        public DateTime RateTime { get; set; }


    }

    /// <summary>
    /// 评价等级
    /// </summary>
    public enum EnumGrade
    {
        /// <summary>
        /// 很好
        /// </summary>
        VeryGood = 0,
        /// <summary>
        /// 好
        /// </summary>
        Good = 1,
        /// <summary>
        /// 不好
        /// </summary>
        Bad = 2
    }

}
