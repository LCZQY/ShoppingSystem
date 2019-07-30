using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using WebApplication1.App_aspx.App_HomePage;

namespace WebApplication1.App_Site
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        public string TitleNav; //构建主导航栏
        public string MaterUsername;// 登录后显示用户名
      
        protected void Page_Load(object sender, EventArgs e)
        {           
            SQLDBC sql = new SQLDBC();
            StringBuilder TopNav = new StringBuilder();
                           

            if (!IsPostBack)
            {
                try
                {                 
                        // 如果有异常就说明Cookies值为空也就没有登录
                       try{                       
                          //  MaterUsername = "欢迎:" + Request.Cookies["name"].Values[0].ToString();
                           MaterUsername = "欢迎:" + CookiesValues("name").ToString();
                        }catch
                        {   MaterUsername="亲，请登陆";
                        
                        }
                                                    
                    //组合导航
                    SqlDataAdapter LC_apter = new SqlDataAdapter();
                    DataTable LC_table = new DataTable();
                    LC_apter = sql.CreateDa("select [Nav_parentName],[Nav_Url],RestrictName from TitleNav_Parent");
                    LC_apter.Fill(LC_table);
                    //组合标签
                    TopNav.Append("<ul class='nav nav-pills pull-right' id='Master_nav'>");
                    foreach (DataRow item in LC_table.Rows)
                    {
                        TopNav.Append("<li role='presentation' class='btn-xs'><a href='javascript:;' class='h6'><span class='ico glyphicon glyphicon-menu-down' ></span><span>" + item[0] + "</span></a></li>");
                    }               
                    TopNav.Append("</ul>");

                }
                catch (Exception el)
                {
                    Response.Write("<script>alert(" + el + ")</script>");
                }
                TitleNav = TopNav.ToString();
            }

        }
        public string CookiesValues(string cookKey)
        {
            HttpCookie qwqws = HttpContext.Current.Request.Cookies[cookKey];
            string sfdsre = Server.UrlDecode(qwqws.Values[0].ToString().Trim().ToLower());
            // context.Response.Write("展示图片是Cookies的值是:" + sfdsre + "     ");
            return sfdsre;
        }
    }
}