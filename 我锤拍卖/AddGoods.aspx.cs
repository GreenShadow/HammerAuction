using System;
using System.Collections.Generic;
using System.Linq;
using System.IO;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Text.RegularExpressions;
using System.Web.UI.HtmlControls;
using HammerAuction.background;

namespace HammerAuction
{
    public partial class AddGoods : System.Web.UI.Page
    {
        private DBOpration dbo;

        protected void Page_Load(object sender, EventArgs e)
        {
            dbo = new DBOpration();
        }

        protected void commit_Click(object sender, EventArgs e)
        {
            if (this.name.Text == "" || this.photo_path.FileName == "" || this.tags.Text == "" || this.start_price.Text == "" || this.lowest_fare.Text == "" || this.details.Text == "")
            {
                this.error.Text = "请将信息填写完整";
                return;
            }
            else
                this.error.Text = "";

            //照片路径
            if (this.photo_path.FileName.Substring(this.photo_path.FileName.LastIndexOf(".")) != ".jpg")
            {
                this.error.Text = "只支持扩展名为.jpg的图片";
                return;
            }
            else
                this.error.Text = "";

            if (!Regex.IsMatch(this.start_price.Text, "^[0123456789.]+") || !Regex.IsMatch(this.lowest_fare.Text, "^[0123456789.]+"))
            {
                this.error.Text = "起拍价和最低加价必须是数字";
                return;
            }
            else
                this.error.Text = "";

            int count = dbo.getGoodsTableCount() + 1;
            string pathName = Server.MapPath("~/Goods/" + count + "/");
            string fileName = count + ".jpg";
            try
            {
                if (!Directory.Exists(pathName))
                {
                    DirectoryInfo folder = Directory.CreateDirectory(pathName);
                }

                if (!File.Exists(pathName + fileName))
                {
                    FileStream fs = File.Create(pathName + fileName);
                    fs.Close();
                }
                this.photo_path.SaveAs(pathName + fileName);
            }
            catch (HttpException ex)
            {
                this.error.Text = ex.ToString();
                return;
            }
            catch (IOException ex)
            {
                this.error.Text = ex.ToString();
                return;
            }

            if (!dbo.insertGoods(this.name.Text, pathName + fileName, this.details.Text, this.tags.Text, this.start_price.Text, this.lowest_fare.Text, State.usr_mail))
            {
                this.error.Text = "添加失败";
                return;
            }

            this.error.Text = "成功";
        }
    }
}