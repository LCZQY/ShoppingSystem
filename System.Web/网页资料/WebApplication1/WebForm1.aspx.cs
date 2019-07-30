using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using System.Text;
using WebApplication1.App_aspx.App_HomePage;

// 前台调用

namespace WebApplication1
{


    partial class WebForm1 : System.Web.UI.Page
    {
        SQLDBC sql = new SQLDBC();
        SqlDataAdapter LC_apter = new SqlDataAdapter();
        DataTable table = new DataTable();

        public string OpetionsFather;  // 商品一级类别
        public StringBuilder LC_option; //商品类别标签组合         
        public string showimg; //图片展示

        protected void Page_Load(object sender, EventArgs e)
        {

            //// 后台调用前台方法!而且可以为前台传递一个参数
            //ClientScript.RegisterStartupScript(this.GetType(), "Click", "Click('" + bools + "')", true);
            //Response.Write("<script>alert('"+bools+"')</script>");  

            if (!IsPostBack)
            {
                ViewState["tp"] = "";

                LC_option = new StringBuilder();
                LC_apter = sql.CreateDa("select CategoryID,CommodityCategory,MinuteID from  LC_COMMODITY_CATEGORY where MinuteID=''");
                LC_apter.Fill(table);
                foreach (DataRow item in table.Rows)
                {
                    LC_option.Append("<option value='" + item[0] + "'>" + item[1] + "</option>");
                }
                OpetionsFather = LC_option.ToString();

            }
        }
        public StringBuilder bulimage = new StringBuilder();
    }
}
        //protected void UPload_Frist_Click(object sender, EventArgs e)
        //{
        //    if (!string.IsNullOrEmpty(ShowImage.FileName))
        //    {
        //        ////当前项目的地址
        //        string path = Server.MapPath("~");
        //        ShowImage.PostedFile.SaveAs(path + "\\App_Image\\SellerProImage\\" + ShowImage.FileName);
        //        //bulimage.Append("<img src='" + "App_Image\\SellerProImage\\" + ShowImage.FileName + "'width=120 height=120/>");               
        //        ViewState["tp"] += "App_Image\\SellerProImage\\" + ShowImage.FileName.ToString() + ",";
        //    }
        //    if (ViewState["tp"] != "")
        //    {
        //        string str = ViewState["tp"].ToString().Substring(0, ViewState["tp"].ToString().Length - 1);
        //        showimg = "";
        //        if (str.IndexOf(",") > 0)
        //        {
        //            string[] temp = str.Split(',');
        //            for (int i = 0; i < temp.Length; i++)
        //            {
        //                showimg += "<img src='" + temp[i] + "' style='float:left;width:100px;height:100px;margin-left:10px'/>";
        //            }
        //        }
        //        else
        //        {
        //            showimg = "<img src='" + str + "' style='float:left;width:100px;height:100px;margin-left:10px'/>";
        //        }
        //    }



        //    //if (!string.IsNullOrEmpty(ShowImage.FileName))
        //    //{
        //    //    for (int i = 0; i < 2; i++)
        //    //    {
        //    //        Saves.Add(i.ToString());
        //    //    }

        //    //}
        //    //for (int i = 0; i < Saves.Count; i++)
        //    //{
        //    //    ClientScript.RegisterStartupScript(form1.GetType(), "sdsds", "<script>alert('" + Saves[i] + "')</script>");
        //    //}

        //    //try
        //    //{
        //    //    if (!string.IsNullOrEmpty(ShowImage.FileName))
        //    //    {  ////当前项目的地址
        //    //        string path = Server.MapPath("~");
        //    //        ShowImage.PostedFile.SaveAs(path + "\\App_Image\\SellerProImage\\" + ShowImage.FileName);
        //    //        bulimage.Append("<img src='" + "App_Image\\SellerProImage\\" + ShowImage.FileName + "'width=120 height=120/>");               
        //    //        HttpCookie htcookies = new HttpCookie("showimgs");
        //    //        htcookies.Value = bulimage.ToString();
        //    //        Response.AppendCookie(htcookies);
        //    //        ClientScript.RegisterStartupScript(form1.GetType(), "sdsds", "<script>alert('成功！')</script>");
        //    //    }
        //    //    else
        //    //    {
        //    //      ClientScript.RegisterStartupScript(form1.GetType(), "sdsds", "<script>alert('请选择文件！')</script>");
        //    //    }

        //    //    for (int i  = 0; i  <Request.Cookies["showimgs"].Values.Count ; i ++)
        //    //    {
        //    //        showimg = Request.Cookies["showimgs"].Values[i].ToString();
        //    //    }
        //    //}
        //    //catch(Exception el)
        //    //{
        //    //    ClientScript.RegisterStartupScript(form1.GetType(), "sdsds", "<script>alert('上传文件是错误！" + el + "')</script>");
        //    //}
        //}


      //  [WebMethod] // 静态方法必须实例化该类，才能够访问到类的成员
        //public static string WriteImage()
        //{
        //    string stu;
        //    WebForm1 form1 = new WebForm1();
        //    if (!string.IsNullOrEmpty(form1.ShowImage.FileName))
        //    {
        //        ////当前项目的地址
        //        string path = form1.Server.MapPath("~");
        //        form1.ShowImage.PostedFile.SaveAs(path + "\\App_Image\\SellerProImage\\" + form1.ShowImage.FileName);
        //        //   图片能够响应的展示，主要解决多个文件一同的展示？？？
        //        form1.Response.Write("<script>alert('成功!')</script>");
        //        form1.showimg = "<img src='" + "App_Image\\SellerProImage\\" + form1.ShowImage.FileName + "' width=120 height=120/>";
        //        stu = "true";
        //        form1.ClientScript.RegisterStartupScript(form1.GetType(), "sdsds", "<script>alert('成功！')</script>");
        //    }
        //    else
        //    {
        //        form1.ClientScript.RegisterStartupScript(form1.GetType(), "Clisdck", "<script>alert('失败！')</script>");
        //        stu = "false";
        //    }
        //    return stu;
        //}


        //public string  Button1_Click()
        //{
        //    string msg;
        //    //// 接受前台的方法！
        //    //string id = Request["id"]; //如果不是通过ajax 请求提交数据 就不会取到这个id ，所以此时的id 为null。但是如果是通过ajax请求提交数据，因为提交数据中有提交id，所以就能够取到这个id ，此时的id就有值了。  
        //    //if (!string.IsNullOrEmpty(id)) // 如果不是通过ajax 请求提交数据 就不会进入花括号来调用GetUserData(string id) 方法  
        //    //{
        //    //    Response.Write("<script>alert('" + id + "')</script>");
        //    //    Response.End(); //将当前所有缓冲的输出发送到客户端，停止该页的执行，如果没有这一步的话，程序还会往后执行，除了把data输出到客户端之外，还会将webForm1.aspx里面的html代码都输出到页面。  
        //    //}
        //    //else
        //    //{
        //    //    Response.Write("<script>alert('失败！')</script>");
        //    //}

        //    // 写入文件
        //    if (!string.IsNullOrEmpty(ShowImage.FileName))
        //    {
        //        ////当前项目的地址
        //        string path = Server.MapPath("~");
        //        ShowImage.PostedFile.SaveAs(path + "\\App_Image\\SellerProImage\\" + ShowImage.FileName);
        //        //   图片能够响应的展示，主要解决多个文件一同的展示？？？
        //        Response.Write("<script>alert('成功!')</script>");
        //        showimg = "<img src='" + "App_Image\\SellerProImage\\" + ShowImage.FileName + "' width=120 height=120/>";
        //        msg = "true";
        //    }
        //    else
        //    {
        //        msg = "false";

        //    }
        //    return (msg);
//        }

    
