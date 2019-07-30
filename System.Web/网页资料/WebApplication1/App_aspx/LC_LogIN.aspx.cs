using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services; // 方便前台调用！
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.App_aspx.App_HomePage;
using System.Data;
using System.Data.SqlClient;
using System.Text;


namespace WebApplication1.App_aspx
{
    public partial class LC_LogIN : System.Web.UI.Page
    {
        public string SelectPhone; //已有手机号【判断用户名是否存在】
        public string SelectUsername; //已有用户名【判断用户名是否存在】

        SQLDBC sql = new SQLDBC();
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack)
            //{
           
            //}
        
    
        }
        //[WebMethod]
        //public static string ReiterationPhone()
        //{
        //    string trues = "";
        //    bool falge = true;
        //    if (falge)
        //    {
        //        trues = "true";
        //    }
        //    else
        //    {
        //        trues = "false";
        //    }
        //    return trues;
        //}
 
  
        //      [WebMethod]
        //public static string Check()
        //{
        //    int flag = 1;
        //    if (flag == 1)
        //    {
        //        return "1";
        //    }
        //    else
        //    {
        //        return "0";
        //    }
        //}
       
    }
}