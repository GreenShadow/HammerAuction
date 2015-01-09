<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="AddGoods.aspx.cs" Inherits="HammerAuction.AddGoods" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>提交拍卖品|我锤拍卖</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <div align="center">
        <div>
            <table>
                <tr height="90px">
                    <td colspan="3">
                        <div>
                            <font face="Microsoft YaHei" size="7">提交拍卖品</font>
                        </div>
                    </td>
                </tr>
                <tr height="60px">
                    <td>
                        <div>
                            <font face="Microsoft YaHei">名称：</font>
                        </div>
                    </td>
                    <td>
                        <div>
                            <asp:TextBox ID="name" runat="server" Height="30px" Width="350px" Font-Names="微软雅黑"
                                Font-Size="Medium"></asp:TextBox>
                        </div>
                    </td>
                </tr>
                <tr height="60px">
                    <td>
                        <div>
                            <font face="Microsoft YaHei">照片路径：</font>
                        </div>
                    </td>
                    <td>
                        <div>
                            <asp:FileUpload ID="photo_path" runat="server" Height="34px" Width="354px" Font-Names="微软雅黑"
                                Font-Size="Medium" />
                        </div>
                    </td>
                    <td>
                        <div>
                            <font face="Microsoft YaHei" size="2" color="gray">只支持*.jpg格式的图片</font>
                        </div>
                    </td>
                </tr>
                <tr height="60px">
                    <td>
                        <div>
                            <font face="Microsoft YaHei">标签：</font>
                        </div>
                    </td>
                    <td>
                        <div>
                            <asp:TextBox ID="tags" runat="server" Height="30px" Width="350px" Font-Names="微软雅黑"
                                Font-Size="Medium"></asp:TextBox>
                        </div>
                    </td>
                    <td>
                        <div>
                            <font face="Microsoft YaHei" size="2" color="gray">标签之间用空格隔开</font>
                        </div>
                    </td>
                </tr>
                <tr height="60px">
                    <td>
                        <div>
                            <font face="Microsoft YaHei">起拍价：</font>
                        </div>
                    </td>
                    <td>
                        <div>
                            <asp:TextBox ID="start_price" runat="server" Height="30px" Width="350px" Font-Names="微软雅黑"
                                Font-Size="Medium"></asp:TextBox>
                        </div>
                    </td>
                </tr>
                <tr height="60px">
                    <td>
                        <div>
                            <font face="Microsoft YaHei">最低加价：</font>
                        </div>
                    </td>
                    <td>
                        <div>
                            <asp:TextBox ID="lowest_fare" runat="server" Height="30px" Width="350px" Font-Names="微软雅黑"
                                Font-Size="Medium"></asp:TextBox>
                        </div>
                    </td>
                    <td>
                        <div>
                            <font face="Microsoft YaHei" size="2" color="gray">建议最低加价在起拍价的1%-5%之间</font>
                        </div>
                    </td>
                </tr>
                <tr height="60px">
                    <td>
                        <div>
                            <font face="Microsoft YaHei">详细描述：</font>
                        </div>
                    </td>
                    <td>
                        <div>
                            <asp:TextBox ID="details" runat="server" Height="140px" Width="350px" Font-Names="微软雅黑"
                                Font-Size="Medium" MaxLength="1000" TextMode="MultiLine"></asp:TextBox>
                        </div>
                    </td>
                    <td>
                        <div>
                            <font face="Microsoft YaHei" size="2" color="gray">1000字以内</font>
                        </div>
                    </td>
                </tr>
                <tr height="90px">
                    <td>
                    </td>
                    <td>
                        <div>
                            <asp:Label ID="error" runat="server" ForeColor="Red"></asp:Label>
                        </div>
                        <div>
                            <asp:Button ID="commit" runat="server" Height="50px" Width="354px" Text="提交" Font-Names="微软雅黑"
                                Font-Size="XX-Large" OnClick="commit_Click" />
                        </div>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
