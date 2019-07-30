using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using WebApplication1.App_aspx.App_HomePage;
namespace WebApplication1.App_aspx
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SQLDBC sql = new SQLDBC();
        public string MYpro;
        protected void Page_Load(object sender, EventArgs e)
        {
             if(!IsPostBack)
             {
                 //我的购物车


              
                
              }

        }
    }
}