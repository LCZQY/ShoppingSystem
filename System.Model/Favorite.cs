namespace Shopping.Model
{
    /// <summary>
    /// 收藏夹表
    /// </summary>
    public class Favorite
    {

        /// <summary>
        /// key
        /// </summary>
        public string FavoriteId { get; set; }

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
