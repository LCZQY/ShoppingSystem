using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace System.Model
{

    /// <summary>
    ///订单详情表
    /// </summary>
    public class OrdersDetail
    {
        /// <summary>
        /// key
        /// </summary>
        public string DetailId { get; set; }

        /// <summary>
        /// 订单编号
        /// </summary>
        public string OrdersID { get; set; }

        /// <summary>
        /// 商品编号
        /// </summary>
        public string ProductId { get; set; }

        /// <summary>
        /// 商品数量
        /// </summary>
        public int Quantity { get; set; }

        /// <summary>
        /// 明细状态
        /// </summary>
        public OrdersStatesEnum States { get; set; }

    }


    /// <summary>
    ///订单扩展表
    /// </summary>
    public class OrdersDetailExtend : Orders
    {
        /// <summary>
        /// key
        /// </summary>
        public string OrdersDetailExtendID { get; set; }

        ///// <summary>
        ///// 订单编号
        ///// </summary>
        //public string OrdersID { get; set; }

        /// <summary>
        /// 商品编号
        /// </summary>
        public string ProductId { get; set; }

        /// <summary>
        /// 商品数量
        /// </summary>
        public string Quantity { get; set; }

        /// <summary>
        /// 订单状态
        /// </summary>
        public OrdersStatesEnum States { get; set; }

    }

    public enum OrdersStatesEnum
    {
        /// <summary>
        /// 正常
        /// </summary>
        Normal = 0,
        /// <summary>
        /// 退货中
        /// </summary>
        ReturnIng = 1,
        /// <summary>
        /// 已退货
        /// </summary>
        Return = 2

    }
}
