using System;
using System.Collections.Generic;
using Shopping.Common;
using Shopping.DAL;
using System.Linq;
using Shopping.Model;

namespace Shopping.BLL
{
    public class OrderService : IBaseServer<Orders>
    {
        private OrdersDal _infoOrderDal = CacheControl.Get<OrdersDal>();
        private UserInfoDal _infoUserDal = CacheControl.Get<UserInfoDal>();
        private OrdersDetailDal _infoDetailDal = CacheControl.Get<OrdersDetailDal>();
        private DeliveryService _infoDeliveryDal = CacheControl.Get<DeliveryService>();
        private ProductDal _infoProductDal = CacheControl.Get<ProductDal>();


        /// <summary>
        ///  连表查询订单信息
        /// </summary>
        public List<OrdersDetailExtend> OrderDetailJoinList()
        {
            try
            {
                var list = from c in _infoOrderDal.GetList().AsQueryable()
                           join b in _infoDetailDal.GetList().AsQueryable()
                           on c.OrdersId equals b.OrdersId

                           join h in _infoDeliveryDal.GetList().AsQueryable()
                           on c.DeliveryId equals h.DeliveryId

                           join y in _infoProductDal.GetList().AsQueryable()
                           on b.ProductId equals y.ProductId into b1
                           from c1 in b1.DefaultIfEmpty()

                           join j in _infoUserDal.GetList().AsQueryable()
                           on c.UserId equals j.UserId into u
                           from u1 in u.DefaultIfEmpty()
                           select new OrdersDetailExtend
                           {
                               //订单
                               OrdersId = c.OrdersId,
                               Orderdate = c.Orderdate,

                               Total = c.Total,
                               DeliveryDate = c.DeliveryDate,
                               States = c.States,
                               Remark = c.Remark,
                               //订单详情
                               DetailId = b.DetailId,
                               Quantity = b.Quantity,
                               DetailStates = b.States,

                               //商品
                               ProductId = c1.ProductId,
                               Title = c1.Title,
                               //Price = c1.Price,

                               //用户
                               UserId = u1.UserId,
                               //UserName = u1.UserName,
                               Nick = u1.Nick,

                               //收货地址
                               Complete = h.Complete,
                               Consignee = h.Consignee,
                               DeliveryId = h.DeliveryId,
                               Phone = h.Phone
                           };
                var response = list== null ? new List<OrdersDetailExtend> { }: list.ToList();
                return response;
            } catch (Exception e)
            {

                return new List<OrdersDetailExtend> { };
                //throw;
            }
        }


        public bool Add(Orders model)
        {
            return _infoOrderDal.AddOrders(model) > 0;
        }

        public bool Delete(string id)
        {
            return _infoOrderDal.DeleteOrders(id) > 0;
        }

        public Orders GetDeail(int id)
        {
            return _infoOrderDal.GetDeail(id);
        }

        public List<Orders> GetList()
        {
            return _infoOrderDal.GetList();
        }



        public List<Orders> GetList(int page, int index)
        {
            return _infoOrderDal.GetList(page, index);
        }

        public bool Update(Orders model)
        {
            return _infoOrderDal.UpdateOrders(model) > 0;
        }
    }
}
