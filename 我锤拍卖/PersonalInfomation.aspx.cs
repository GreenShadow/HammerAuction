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
    public partial class PersonalInfomation : System.Web.UI.Page
    {
        private DBOpration dbo;
        private DataSet DS;

        protected void Page_Load(object sender, EventArgs e)
        {
            dbo = new DBOpration();
            DS = dbo.getUsers(State.usr_mail);

            this.usr_name.InnerText = DS.Tables["Details"].Rows[0][2].ToString().Trim();
            this.usr_mail.InnerText = State.usr_mail;
            this.credit_level.InnerText = DS.Tables["Details"].Rows[0][5].ToString().Trim();
            this.verfied.InnerText = DS.Tables["Details"].Rows[0][4].ToString().Trim();

            //读取用户添加的拍卖品
            DS = dbo.getUsersCommit(State.usr_mail);





            string a = "E:\\website\\HammerAuction\\我锤拍卖\\Goods\\1\\1.jpg";
            a = a.Replace("\\", "/");
            this.img.Src = a;
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddGoods.aspx");
        }
    }
}