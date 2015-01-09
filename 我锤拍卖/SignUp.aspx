<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="HammerAuction.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>注册|我锤拍卖</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <div>
        <font face="Microsoft YaHei">
            <table align="center" cellpadding="0" cellspacing="0">
                <tr>
                    <td>
                        <div style="width: 600px; height: 620px; padding: 20px; padding-left: 60px">
                            <table cellpadding="0" cellspacing="0">
                                <tr valign="top">
                                    <td width="600">
                                        <div style="margin-bottom: 30px; margin-left: -20px">
                                            <table cellpadding="0" cellspacing="0">
                                                <tr>
                                                    <td>
                                                        <font size="6">注册我锤</font>
                                                    </td>
                                                    <td valign="bottom">
                                                        <div style="margin-left: 20px; margin-bottom:3px">
                                                            <asp:Label ID="empty" runat="server" ForeColor="Red"></asp:Label>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                        <div style="margin-bottom: 10px">
                                            <table cellpadding="0" cellspacing="0">
                                                <tr>
                                                    <td>
                                                        邮箱：
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="mail_illegal" runat="server" ForeColor="Red"></asp:Label>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                        <asp:TextBox ID="mail" runat="server" Height="40px" Width="500px" Font-Size="XX-Large"
                                            Font-Names="微软雅黑"></asp:TextBox>
                                        <div style="margin-bottom: 10px; margin-top: 10px">
                                            <table cellpadding="0" cellspacing="0">
                                                <tr>
                                                    <td>
                                                        昵称：
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="nikname_illegal" runat="server" ForeColor="Red"></asp:Label>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                        <asp:TextBox ID="nikname" runat="server" Height="40px" Width="500px" Font-Size="XX-Large"
                                            Font-Names="微软雅黑"></asp:TextBox>
                                        <div style="margin-bottom: 10px; margin-top: 10px">
                                            <table cellpadding="0" cellspacing="0">
                                                <tr>
                                                    <td>
                                                        密码：
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="passwd_illegal" runat="server" ForeColor="Red"></asp:Label>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                        <asp:TextBox ID="passwd" runat="server" Height="40px" Width="500px" Font-Size="XX-Large"
                                            Font-Names="微软雅黑" TextMode="Password"></asp:TextBox>
                                        <div style="margin-bottom: 10px; margin-top: 10px">
                                            <table cellpadding="0" cellspacing="0">
                                                <tr>
                                                    <td>
                                                        确认密码：
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="passwd_confirm_illegal" runat="server" ForeColor="Red"></asp:Label>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                        <asp:TextBox ID="passwd_confirm" runat="server" Height="40px" Width="500px" Font-Size="XX-Large"
                                            Font-Names="微软雅黑" TextMode="Password"></asp:TextBox>
                                        <div style="margin-bottom: 10px; margin-top: 10px">
                                            <table cellpadding="0" cellspacing="0">
                                                <tr>
                                                    <td>
                                                        验证码：
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="verification_code_text_illegal" runat="server" ForeColor="Red"></asp:Label>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                        <table cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td>
                                                    <asp:TextBox ID="verification_code_text" runat="server" Height="40px" Width="250px"
                                                        Font-Size="XX-Large" Font-Names="微软雅黑"></asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:ImageButton ID="verification_code" runat="server" Height="40px" Width="250px" />
                                                </td>
                                            </tr>
                                        </table>
                                        <div style="margin-top: 40px">
                                            <asp:Button ID="confirm" runat="server" Height="60px" Width="504px" Font-Bold="False"
                                                Font-Names="微软雅黑" Font-Size="XX-Large" Text="确定注册" OnClick="confirm_Click" />
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </td>
                    <td>
                        <div style="background-color: #F00; width: 300px; height: 660px">
                            图片</div>
                    </td>
                </tr>
            </table>
        </font>
    </div>
</asp:Content>
