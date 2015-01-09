using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HammerAuction.background;

namespace HammerAuction
{
    public partial class Site : System.Web.UI.MasterPage
    {

        private DBOpration dbo;
        protected void Page_Load(object sender, EventArgs e)
        {
            dbo = new DBOpration();

            if (Request.QueryString["state"] != null)
                if (Request.QueryString["state"].ToString() == "0")
                {
                    State.isLogin = false;
                    State.usr_mail = "";
                    Response.Redirect("MainPage.aspx");
                }

            if (State.isLogin)
            {
                this.login_username.InnerText = "欢迎您：" + dbo.getNickName(State.usr_mail);
                this.login_username.HRef = "/PersonalInfomation.aspx";
                this.signin_outlog.InnerText = "退出登录";
                int end = Request.Url.ToString().IndexOf('?');
                if (end > 0)
                    this.signin_outlog.HRef = Request.Url.ToString().Substring(0, end) + "?state=0";
                else
                    this.signin_outlog.HRef = Request.Url.ToString() + "?state=0";
            }
            else
            {
                this.login_username.InnerText = "登录";
                this.login_username.HRef = "/Login.aspx";
                this.signin_outlog.InnerText = "注册";
                this.signin_outlog.HRef = "/SignUp.aspx";
            }
        }
    }
}