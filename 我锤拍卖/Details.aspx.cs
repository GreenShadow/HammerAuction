using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using HammerAuction.background;

namespace HammerAuction
{
    public partial class Details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DBOpration dbo = new DBOpration();
            if (Request.QueryString["id"] != null)
                if (Request.QueryString["id"].ToString() == "0")
                {
                    int id = Convert.ToInt32(Request.QueryString["id"]);
                    //DataSet DS = dbo.getGoodsDetails(id);
                }
        }

        protected void count_down_deadline_Tick(object sender, EventArgs e)
        {

        }
    }
}