using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.App_aspx.App_HomePage;

namespace WebApplication1.App_aspx
{
    public partial class LC_SetUpShop : System.Web.UI.Page
    {
        SQLDBC sql = new SQLDBC();
        SqlDataAdapter LC_apter = new SqlDataAdapter();
        DataTable table = new DataTable();

        public string OpetionsFather;  // 商品一级类别
        public StringBuilder LC_option; //商品类别标签组合         
        public string showimg; //图片展示

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {               

              //  ViewState["tp"] = ""; // 储存上传进来的文件名。该变量只要不把项目关闭就会保存变量，使用方法是直接赋值给一个数组
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


        /**展示图片按钮！**/
        protected void UPload_Frist_Click(object sender, EventArgs e)
        {
            //if (!string.IsNullOrEmpty(ShowImage.FileName)){
            //    ////当前项目的地址
            //  string path = Server.MapPath("~");
            //    ShowImage.PostedFile.SaveAs(path + "\\App_Image\\SellerProImage\\" + ShowImage.FileName);              
            //    ViewState["tp"] += "..\\App_Image\\SellerProImage\\" + ShowImage.FileName.ToString() + ",";
            //}
            //if (ViewState["tp"] != ""){
            //    string str = ViewState["tp"].ToString().Substring(0, ViewState["tp"].ToString().Length - 1);
            //    showimg = "";
            //    if (str.IndexOf(",") > 0){
            //        string[] temp = str.Split(',');
            //        for (int i = 0; i < temp.Length; i++){
            //            showimg += "<img src='" + temp[i] + "' style='float:left;width:100px;height:100px;margin-left:10px'/>";
            //        }
            //    }
            //    else{
            //        showimg = "<img src='" + str + "' style=' border:rgba(216, 14, 121,1) solid thin; float:left;width:150px;height:120px;margin-left:10px'/>";
            //    }
            //}


        }


        /**详细图片按钮！**/
        protected void UPload_Seend_Click(object sender, EventArgs e)
        {
            //if (!string.IsNullOrEmpty(DetailImage.FileName))
            //{
            //    ////当前项目的地址
            //    string path = Server.MapPath("~");
            //    DetailImage.PostedFile.SaveAs(path + "\\App_Image\\SellerProImage\\" + DetailImage.FileName);             
            //    ViewState["tp"] += "..\\App_Image\\SellerProImage\\" + DetailImage.FileName.ToString() + ",";
            //}
            //if (ViewState["tp"] != "")
            //{
            //    string str = ViewState["tp"].ToString().Substring(0, ViewState["tp"].ToString().Length - 1);
            //    showimg = "";
            //    if (str.IndexOf(",") > 0)
            //    {
            //        string[] temp = str.Split(',');
            //        for (int i = 0; i < temp.Length; i++)
            //        {
            //            showimg += "<img src='" + temp[i] + "' style='float:left;width:120px;height:130px;margin-left:10px'/>";
            //        }
            //    }
            //    else
            //    {
            //        showimg = "<img src='" + str + "' style='float:left;width:120px;height:130px;margin-left:10px'/>";
            //    }
            //}


        }
    }
}