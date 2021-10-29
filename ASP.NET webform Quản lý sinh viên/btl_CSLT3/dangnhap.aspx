
<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="dangnhap.aspx.cs" Inherits="btl_CSLT3.dangnhap" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style27 {
            width: 100%;
            height: 267px;
        }
        .auto-style30 {
            width: 474px;
        }
        .auto-style33 {
            width: 474px;
            height: 39px;
        }
        .auto-style34 {
            height: 39px;
        }
        .auto-style37 {
            height: 33px;
        }
        .auto-style38 {
            width: 474px;
            height: 7px;
        }
        .auto-style39 {
            height: 7px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style27">
        <tr>
            <td colspan="2" style="font-size: 35px; color: #0000FF; text-align: center" class="auto-style37"><b>
                <br />
                Đăng nhập&nbsp;</b></td>
        </tr>
        <tr>
            <td class="auto-style38"></td>
            <td class="auto-style39"></td>
        </tr>
        <tr>
            <td class="auto-style33" style="text-align: right; font-size: large;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tên đăng nhập:&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td class="auto-style34">
                <asp:TextBox ID="tendangnhap" runat="server" Width="233px" Height="19px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style33" style="text-align: right; font-size: large;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mật khẩu:&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td class="auto-style34">
                <asp:TextBox ID="matkhau" runat="server" TextMode="Password" Width="233px" Height="19px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style30">&nbsp;</td>
            <td>
                
                <asp:Button ID="nutdangnhap" runat="server" OnClick="nutdangnhap_Click" Text="Đăng nhập" Width="100px" />
                
                <asp:Label ID="lblthongbao" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center; font-size: 20px;">Bạn chưa có tài khoản?&nbsp;&nbsp;<asp:HyperLink ID="dangki" runat="server" NavigateUrl="~/dangki.aspx">Đăng ký</asp:HyperLink>
            </td>
        </tr>
    </table>
</asp:Content>
