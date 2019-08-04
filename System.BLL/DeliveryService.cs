using System.Collections.Generic;
using Shopping.DAL;
using Shopping.Model;

namespace Shopping.BLL
{
    public class DeliveryService : IBaseServer<Delivery>
    {
        private DeliveryDal _infoDal = Shopping.Common.CacheControl.Get<DeliveryDal>();


        public bool Add(Delivery model)
        {
            return _infoDal.AddDelivery(model) > 0;
        }

        public bool Delete(string id)
        {
            return _infoDal.DeleteDelivery(id) > 0;
        }

        public Delivery GetDeail(int id)
        {
            return _infoDal.GetDeail(id);
        }

        public List<Delivery> GetList()
        {
            return _infoDal.GetList();
        }

        public List<Delivery> GetList(int page, int index)
        {
            return _infoDal.GetList(page, index);
        }

        public bool Update(Delivery model)
        {
            return _infoDal.UpdateDelivery(model) > 0;
        }
    }
}
