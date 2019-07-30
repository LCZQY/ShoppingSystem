using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.App_aspx.App_HomePage; //引用数据库类
using System.Text;


namespace WebApplication1.App_BackgroundProcedure.APP_Administrator
{
    public partial class Administrator : System.Web.UI.Page
    {
        public string SeelTable; //组合表格
        public SqlDataAdapter LC_Adater;
        public List<string> LC_UserMsg;  //如果是多个用户就一同遍历
        public StringBuilder LC_SeelTable;
        SQLDBC sql = new SQLDBC();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    string UserName = Request.Cookies["name"].Values[0].ToString();
                    string LC_Upshop = Request.Cookies["Upshop"].Values[0].ToString();  //要不要放在数据库中????              
                        /*当该cookie不为空时则说明，已经提交申请！*/
                    // 查出用户申请状态！判断该用户是否已经申请过
                    string LC_ApplyResult = sql.ReturnValue("select ApplyResult from LC_UPDATE_RESTRICT where UserName='" + UserName + "' ");
                    string ApplyResu="";
                    switch (LC_ApplyResult)
                    {
                            case "0":
                            ApplyResu = "申请";
                            break;
                            case "1":
                            ApplyResu = "通过";
                            break;                    
                    }
                    if (LC_ApplyResult == "0")
                    {
                        if (!string.IsNullOrEmpty(LC_Upshop))
                        {                   
                        LC_SeelTable = new StringBuilder();
                        LC_Adater = sql.CreateDa("select UserID,UserName,Phone,RertrictID,AccountState from LC_USERS where UserName='" + UserName + "' or Phone='" + UserName + "'   ");
                            DataTable LC_Table = new DataTable();                           
                            LC_Adater.Fill(LC_Table);
                            LC_SeelTable.Append("<table class='table table-bordered'>");
                            foreach (DataRow item in LC_Table.Rows)
                            {
                                LC_SeelTable.Append("<tr><th>是否过</th><th>用户ID</th><th>用户名</th><th>号码</th><th>权限ID</th><th>账号状态</th><th>申请状态</th></tr>");
                                LC_SeelTable.Append("<tr><td><label class='checkbox'><input  type='checkbox' id='Yes' />通过</label><label class='checkbox'><input id='No' class='checkbox' type='checkbox' />拒绝</label></td><td>" + item[0].ToString() + "</td><td id='AdminUserName'>" + item[1].ToString() + "</td><td>" + item[2].ToString() + "</td><td>" + item[3].ToString() + "</td><td>" + item[4].ToString() + "</td><td>" + ApplyResu + "</td></tr>");
                            }
                            LC_SeelTable.Append("</table>");                           
                           }                            
                        SeelTable = LC_SeelTable.ToString();
                    }else
                    {
                        SeelTable = "暂时没有人申请哦......"; 
                    }                 
                }
                catch
                {
                    SeelTable = "暂时没有人申请哦......";

                }





            }
        }
    }
}