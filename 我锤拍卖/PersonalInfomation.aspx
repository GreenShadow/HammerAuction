<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="PersonalInfomation.aspx.cs" Inherits="HammerAuction.PersonalInfomation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title id="title" runat="server"></title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <div align="center">
        <table cellspacing="0" cellpadding="0">
            <tr>
                <td valign="top">
                    <div style="margin-right: 30px;">
                        <table cellspacing="0" cellpadding="0">
                            <tr>
                                <td colspan="5">
                                    <div>
                                        <font face="Hiragino Sans GB" size="7">
                                        <div id="usr_name" runat="server">
                                            绿色de影子
                                        </div>
                                        </font>
                                        <div>
                                            <font id="usr_mail" runat="server" face="Hiragino Sans GB">569027851@qq.com</font>
                                            <font face="Hiragino Sans GB" size="2">&nbsp;<a>修改昵称</a></font><font face="Hiragino Sans GB"
                                                size="2">&nbsp;<a>修改密码</a></font>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td width="150px">
                                    <div>
                                        信用等级：
                                    </div>
                                </td>
                                <td>
                                    <div id="credit_level" runat="server">
                                        3
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div>
                                        实名认证：
                                    </div>
                                </td>
                                <td>
                                    <div id="verfied" runat="server">
                                        否
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <div>
                                        <asp:Button ID="submit" runat="server" Width="250px" Height="70px" Text="提交拍卖品" Font-Size="XX-Large"
                                            Font-Names="微软雅黑" OnClick="submit_Click" />
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
                <td valign="top">
                    <div style="border: 1px solid #999999;">
                        <table cellspacing="0" cellpadding="0">
                            <tr>
                                <td valign="top" colspan="5" width="800px" height="30px">
                                    <div style="background-color: #806B1C">
                                        我的我锤
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td width="5px">
                                </td>
                                <td valign="top">
                                    <div>
                                        我登记的拍卖</div>
                                    <div id="mySell" runat="server">
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td width="5px">
                                </td>
                                <td valign="top">
                                    <div>
                                        我参与的拍买</div>
                                    <div id="myBuy" runat="server">
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
            </tr>
        </table>
    </div>
    <div>
        <img id="img" runat="server" src="" />
    </div>
</asp:Content>
