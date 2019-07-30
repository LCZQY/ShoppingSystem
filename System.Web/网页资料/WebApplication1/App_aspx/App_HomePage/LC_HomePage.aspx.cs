using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data;
using System.Data.SqlClient;


namespace WebApplication1.App_aspx.App_HomePage
{
    public partial class LC_HomePage : System.Web.UI.Page
    {
        public string nav;  //导航
        public string SonNav; ///侧边子导航
        public string LoginForUserName; //登录后的用户名..... 
        public string Buuton_Display;// 登录后显示用户名
        public string A_Display;// 登录后显示用户名

        StringBuilder navleft = new StringBuilder();
        SQLDBC sql = new SQLDBC();
        protected void Page_Load(object sender, EventArgs e)
        {
            #region
            //储存父级导航名！
            List<string> parentName = new List<string>() { };
            //读取父导航名字
            SqlDataAdapter LC_Adater = new SqlDataAdapter();
            LC_Adater = sql.CreateDa("select [Nav_ParentName],Nav_ParentID from [Nav_Parent]");
            DataTable LC_Table = new DataTable();
            LC_Adater.Fill(LC_Table);
            // Response.Write("<script>alert('成功！')</script>");
            //生成标签
            navleft.Append("<div class='table-responsive pull-left' style='width:800px'>");
            navleft.Append("<!-- 侧边父级导航开始--><ul id='Nav_parent' class='text-center table'>");
            navleft.Append("<li><ul id='ParentID'><li class='pull-left'>主题市场</li>");
            navleft.Append("<li>  <span class='glyphicon glyphicon-align-left' aria-hidden='true'></span></li></ul></li>");

            foreach (DataRow item in LC_Table.Rows)
            {
                navleft.Append("<li class='" + item[1] + "'>");
                string[] ParentId = item[0].ToString().Split('/');
                for (int i = 0; i < ParentId.Length; i++)
                {
                       navleft.Append("<a href='#'>" + ParentId[i] + "</a>").Append("/");
                }
                navleft.Remove(navleft.Length - 1, 1).Append("<strong>></strong>");
                navleft.Append("</li>");                
            }                
            navleft.Append("</ul></div><!--父级导航结束 -->");
            nav = navleft.ToString();        
            #endregion



            // 登录后按钮消失出现个人信息
            try
            {
                //LoginForUserName = Request.Cookies["name"].Values[0].ToString();
                 LoginForUserName=CookiesValues("name");
                Buuton_Display = "display:none";
                A_Display = "display:block";
            }
            catch
            {
                LoginForUserName = "Hi,美女";
                A_Display = "display:none";
            }

        }


// 退出后记得要清除Cookies
        //获取COOkies值的方法
        public string CookiesValues(string cookKey)
        {
            HttpCookie qwqws = HttpContext.Current.Request.Cookies[cookKey];
            string sfdsre =Server.UrlDecode(qwqws.Values[0].ToString().Trim().ToLower());
            // context.Response.Write("展示图片是Cookies的值是:" + sfdsre + "     ");
            return sfdsre;
        }
    }

}