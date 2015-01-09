using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;
using HammerAuction.background;

namespace HammerAuction
{
    public partial class SignUp : System.Web.UI.Page
    {
        private DBOpration dbo;

        protected void Page_Load(object sender, EventArgs e)
        {
            dbo = new DBOpration();
        }

        private bool isIllegalCharacter(string text)
        {
            if (text.Contains(@"\") || text.Contains("/") || text.Contains(":") || text.Contains("*") || text.Contains("?") || text.Contains("\"") || text.Contains("<") || text.Contains(">") || text.Contains("|") || text.Contains(" "))
                return true;
            return false;
        }

        protected void confirm_Click(object sender, EventArgs e)
        {
            if (this.mail.Text == "" || this.nikname.Text == "" || this.passwd.Text == "" || this.passwd_confirm.Text == "" || this.verification_code_text.Text == "")
            {
                this.empty.Text = "请将信息填写完整";
                return;
            }
            else
                this.empty.Text = "";

            //邮箱
            string mailRegex = @"^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$";
            if (!Regex.IsMatch(this.mail.Text, mailRegex))
            {
                this.mail_illegal.Text = "请输入正确的邮箱";
                return;
            }
            else
                this.mail_illegal.Text = "";

            //昵称
            if (isIllegalCharacter(this.nikname.Text))
            {
                this.nikname_illegal.Text = "不能含有空格或下列非法字符：\\ / : * ? \" < > >";
                return;
            }
            else
                this.nikname_illegal.Text = "";

            //密码
            string passwdRegex = @"^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{8,16}$";
            if (!Regex.IsMatch(this.passwd.Text, passwdRegex))
            {
                this.passwd_illegal.Text = "密码必须是数字和字母的组合";
                return;
            }
            else
                this.passwd_illegal.Text = "";

            //确认密码
            if (this.passwd_confirm.Text != this.passwd.Text)
            {
                this.passwd_confirm_illegal.Text = "两次密码不一致！";
                return;
            }
            else
                this.passwd_confirm_illegal.Text = "";

            //验证码

            //注册
            if (!dbo.SignUp(this.mail.Text, this.passwd.Text, this.nikname.Text))
            {
                this.empty.Text = "注册失败";
                return;
            }
            else
                Response.Redirect("SignUpSuccess.aspx");
        }
    }
}