<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="HammerAuction.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <title>登陆&nbsp;|&nbsp;我锤拍卖</title>
</head>
<body topmargin="10px" leftmargin="50px" rightmargin="50px" bottommargin="0px">
    <style>
        a:link, a:visited, a:hover, a:active
        {
            color: #000000;
        }
    </style>
    <a href="/MainPage.aspx">
        <div id="logo" style="line-height: 128px; height: 128px; width: 350px">
            <div style="float: left">
                <img src="/img/logo.jpg" height="128px" /></div>
            <div style="float: left">
                <font face="Hiragino Sans GB" size="7">&nbsp;我锤拍卖</font>
            </div>
        </div>
    </a>
    <form runat="server">
    <div style="clear: both; margin-top: -20px">
        <table align="center">
            <tr>
                <td>
                    <div>
                        <div style="height: 300px; float: left; margin-right: 300px">
                            <img src="/img/锤.jpg" height="300px" /></div>
                        <table cellpadding="0" cellspacing="0" style="border: 1px #999999 solid">
                            <tr>
                                <td>
                                    <div style="height: 300px; width: 280px; padding: 20px; float: right">
                                        <div>
                                            <font face="Microsoft YaHei" size="6">&nbsp;登陆</font>
                                        </div>
                                        <div style="margin-top: 50px">
                                            <asp:TextBox ID="login_name" runat="server" Height="30px" Width="270px" Font-Size="X-Large"></asp:TextBox>
                                        </div>
                                        <div style="margin-top: 20px">
                                            <asp:TextBox ID="passwd" runat="server" Height="30px" Width="270px" Font-Size="X-Large"
                                                TextMode="Password"></asp:TextBox>
                                        </div>
                                        <div style="margin-top: 40px; height: auto">
                                            <asp:Label ID="illegal" runat="server" ForeColor="Red"></asp:Label>
                                            <asp:Button ID="bt_login" runat="server" Text="登 录" Height="35px" Width="274px" Font-Size="Large"
                                                Font-Names="微软雅黑" OnClick="bt_login_Click" BackColor="#6ABCFF" BorderColor="#777777"
                                                BorderStyle="Solid" BorderWidth="1px" ForeColor="White" /></div>
                                        <div align="right" style="margin-top: 5px">
                                            <a href="/SignUp.aspx"><font face="microsoft yahei" size="2">没有账号？现在注册</font></a>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
            </tr>
        </table>
    </div>
    </form>
    <div align="center">
        <font face="Hiragino Sans GB" color="#808080">2015年1月&nbsp;|&nbsp;版权所有：中北大学12210F01</font>
    </div>
</body>
</html>
