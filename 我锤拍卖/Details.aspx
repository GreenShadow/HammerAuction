<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Details.aspx.cs"
    Inherits="HammerAuction.Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title id="title" runat="server"></title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <asp:ScriptManager runat="server">
    </asp:ScriptManager>
    <div id="info">
        <table align="center" cellpadding="0" cellspacing="0">
            <tr>
                <td>
                    <div id="picture" runat="server" style="background-color: #C19090; height: 400px;
                        width: 400px;">
                        <asp:Image ID="details_image" runat="server" />
                    </div>
                </td>
                <td>
                    <div id="texts" style="height: 360px; width: 410px; padding: 20px">
                        <table align="left" cellpadding="0" cellspacing="0">
                            <tr>
                                <td colspan="3">
                                    <div id="name" runat="server">
                                        <font face="Microsoft YaHei" size="4">iPhone 6一元拍卖</font>
                                    </div>
                                </td>
                            </tr>
                            <tr height="40px" valign="bottom">
                                <td>
                                    <div id="state_money" runat="server" style="margin-bottom: 8px">
                                        <font face="Microsoft YaHei" size="2" color="#666666">当前价：</font>
                                    </div>
                                </td>
                                <td>
                                    <table align="left" cellpadding="0" cellspacing="0">
                                        <tr height="70px" valign="bottom">
                                            <td>
                                                <div id="price_now" runat="server">
                                                    <font face="Microsoft YaHei" size="7" color="#FB0606">123456</font>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="margin-bottom: 8px">
                                                    <font face="Microsoft YaHei" size="2" color="#FB0606">&nbsp;元</font>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr valign="bottom" height="60px">
                                <td>
                                    <div id="state_time" runat="server">
                                        <font face="Microsoft YaHei" size="2" color="#666666">剩余时间：</font>
                                    </div>
                                </td>
                                <td>
                                    <div>
                                        <font face="Microsoft YaHei" size="5">
                                        <asp:Label ID="lblTimerDays" runat="server" Text="0" ForeColor="Red" />&nbsp;天
                                        <asp:Label ID="lblTimerHours" runat="server" Text="0" ForeColor="Red" />&nbsp;时
                                        <asp:Label ID="lblTimerMinutes" runat="server" Text="0" ForeColor="Red" />&nbsp;分
                                        <asp:Label ID="lblTimerSeconds" runat="server" Text="0" ForeColor="Red" />&nbsp;秒
                                        <asp:Timer ID="count_down_deadline" runat="server" OnTick="count_down_deadline_Tick">
                                        </asp:Timer>
                                        </font>
                                    </div>
                                </td>
                            </tr>
                            <tr valign="bottom" height="60px">
                                <td>
                                    <font face="Microsoft YaHei" size="2" color="#666666">本轮出价剩余：&nbsp;&nbsp;</font>
                                </td>
                                <td>
                                    <div>
                                        <font face="Microsoft YaHei" size="5">
                                        <asp:Label ID="Label3" runat="server" Text="0" ForeColor="Red" />&nbsp;：
                                        <asp:Label ID="Label4" runat="server" Text="0" ForeColor="Red" />&nbsp;
                                        <asp:Timer ID="count_down_bid" runat="server">
                                        </asp:Timer>
                                        </font>
                                    </div>
                                </td>
                            </tr>
                            <tr valign="bottom" height="70px">
                                <td>
                                    <div>
                                        <font face="Microsoft YaHei" size="2" color="#666666">出价：&nbsp;</font>
                                    </div>
                                </td>
                                <td>
                                    <div>
                                        <asp:TextBox ID="price" runat="server" Height="40px" Width="200px" Font-Size="X-Large"
                                            onkeypress="if (event.keyCode < 48 || event.keyCode >57){event.returnValue = false;}"></asp:TextBox>
                                    </div>
                                </td>
                            </tr>
                            <tr valign="bottom" height="70px">
                                <td>
                                </td>
                                <td>
                                    提交按钮
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
                <td>
                    <div id="log" style="background-color: #03FF00; height: 400px; width: 250px">
                    </div>
                </td>
            </tr>
        </table>
    </div>
    <div id="Div1" align="center">
        <div style="background-color: #FF0004; width: 1100px; height: 2000px; clear: both">
        </div>
    </div>
</asp:Content>
