using System;

namespace Shopping.Model
{
    /// <summary>
    ///订单表
    /// </summary>
    public class Orders
    {
        /// <summary>
        /// key
        /// </summary>
        public string OrdersId { get; set; }

        /// <summary>
        /// 下单时间
        /// </summary>
        public DateTime Orderdate { get; set; }

        /// <summary>
        /// 用户id
        /// </summary>
        public string UserId { get; set; }

        /// <summary>
        /// 总价
        /// </summary>
        public decimal Total { get; set; }

        /// <summary>
        /// 用户收货地址编号
        /// </summary>
        public string DeliveryId { get; set; }

        /// <summary>
        /// 收货日期
        /// </summary>
        public DateTime DeliveryDate { get; set; }

        /// <summary>
        /// 订单状态[0:未付款，1：已付款， 2：已发货，3：已收货，4：已评价]
        /// </summary>
        public int? States { get; set; }

        /// <summary>
        /// 备注
        /// </summary>
        public string Remark { get; set; }
    }

    /// <summary>
    /// /订单状态
    /// </summary>
    public enum StatesEnum
    {

        /// <summary>
        /// 未付款
        /// </summary>
        Unpaid = 0,
        /// <summary>
        /// 已付款
        /// </summary>
        PaymentMade = 1,

        /// <summary>
        /// 已发货
        /// </summary>
        Shipped = 2,

        /// <summary>
        /// 已收货
        /// </summary>
        GoodsReceived = 3,

        /// <summary>
        /// 已评价
        /// </summary>
        Evaluated = 4

    }
}
