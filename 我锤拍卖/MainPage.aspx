<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="HammerAuction.MainPage" %>

<asp:content id="Content1" contentplaceholderid="head" runat="server">
    <title>我锤拍卖</title>
</asp:content>
<asp:content id="Content2" contentplaceholderid="ContentPlaceHolder3" runat="server">
    <style>
        a:link, a:visited, a:hover, a:active
        {
            color: #000000;
        }
    </style>
    <table id="first_recommend" align="center" border="0">
        <tr>
            <td>
                <div align="center" style="width: 350px; height: 350px;">
                    <img height="350px" src="/img/锤.jpg" />
                </div>
            </td>
            <td>
                <a href="/Details.aspx?id=00001">
                    <div id="recommend" align="center" style="width: 653px; height: 350px; float: left">
                        <div align="center" style="margin-top: 40px;">
                            <font face="Hiragino Sans GB" size="6">大锤菌推荐</font>
                        </div>
                        <div align="center" style="margin-top: 10px;">
                            <font face="Hiragino Sans GB">iPhone 6</font> <font face="Hiragino Sans GB" size="7">
                                1</font> <font face="Hiragino Sans GB">元起拍</font>
                        </div>
                        <div align="center" style="margin-top: 10px;">
                            <font face="Hiragino Sans GB">比合算更合算</font>
                        </div>
                        <img width="653px" src="/img/iphone6.jpg" style="margin-top: 10px;" />
                    </div>
                </a>
            </td>
        </tr>
    </table>
    <table id="recommends" align="center" border="0">
        <tr>
            <td>
                <div id="goods" style="width: 333px; height: 200px; background-color: #00FFB5">
                </div>
            </td>
            <td>
                <div id="goods" style="width: 333px; height: 200px; background-color: #00FFB5">
                </div>
            </td>
            <td>
                <div id="goods" style="width: 333px; height: 200px; background-color: #00FFB5">
                </div>
            </td>
        </tr>
    </table>
</asp:content>
