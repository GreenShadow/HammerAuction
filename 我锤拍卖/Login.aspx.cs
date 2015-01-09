using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HammerAuction.background;

namespace HammerAuction
{
    public partial class Login : System.Web.UI.Page
    {
        private DBOpration dbo;
        protected void Page_Load(object sender, EventArgs e)
        {
            dbo = new DBOpration();
            this.illegal.Text = Request.UrlReferrer.AbsoluteUri;
        }

        protected void bt_login_Click(object sender, EventArgs e)
        {
            if (this.login_name.Text == "" || this.passwd.Text == "")
            {
                this.illegal.Text = "请将信息填写完整";
                return;
            }
            else
                this.illegal.Text = "qwe";

            if (!dbo.Login(this.login_name.Text, this.passwd.Text))
            {
                this.illegal.Text = "用户名或密码不正确";
                return;
            }
            else
            {
                State.isLogin = true;
                State.usr_mail = this.login_name.Text;
                Response.Redirect("LoginSuccsee.aspx");
            }
        }
    }
}