using Shopping.BLL;
using Shopping.Common;
using Shopping.Model;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace System.Web
{
    public partial class _Default : Page
    {

        private ProductService _InfoProductService = CacheControl.Get<ProductService>();
        private PhotoService _InfoImageService = CacheControl.Get<PhotoService>();
        protected void Page_Load(object sender, EventArgs e)
        {


        }


        /// <summary>
        /// 获取商品
        /// </summary>
        /// <returns></returns>
        public string GetProductList()
        {
            try
            {
                var list1 = _InfoProductService.GetList().AsQueryable();
                var list2 = _InfoImageService.GetList().AsQueryable();
                var list3 = from c in list1
                            select new ProductEx
                            {
                                Content = c.Content,
                                CateId = c.CateId,
                                MarketPrice = c.MarketPrice,
                                Path = list2.Where(u => u.ProductId == c.ProductId).FirstOrDefault().PhotoUrl,
                                Price = c.Price,
                                ProductId = c.ProductId,
                                Title = c.Title,
                                Stock = c.Stock
                            };
                return SerializeHelp.ToJson(list3.ToList());
            }
            catch (Exception e)
            {

                return "";
            }
        }





    }
}